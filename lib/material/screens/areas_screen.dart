import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/material/lists/areas_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

class AreasScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;
  final Country country;

  const AreasScreen({
    Key? key,
    required this.scrollController,
    required this.bottomNavigationBar,
    required this.country,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final filteredAreasBloc = BlocProvider.of<FilteredAreasBloc>(context);

    return Scaffold(
        appBar: RockCarrotAppBar(
          headline: country.name,
          initialFilterValue: filteredAreasBloc.currentFilter,
          onFilterChanged: (filterText) =>
              filteredAreasBloc.add(FilteredBaseEventFilterUpdated(filterText)),
          selectedValue: filteredAreasBloc.currentSorting,
          onSortingChanged: (selectedSorting) => filteredAreasBloc.add(
            FilteredBaseEventSortingUpdated(selectedSorting),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: RefreshIndicator(
          onRefresh: () async => BlocProvider.of<AreasBloc>(context)
              .add(BaseEventUpdateData(country)),
          child: BlocBuilder<AreasBloc, BaseState>(builder: (context, state) {
            if (state is BaseStateInProgress) {
              return CircularProgressIndicator();
            }
            if (state is BaseStateDataReceived) {
              return BlocBuilder<FilteredAreasBloc, FilteredBaseState>(
                builder: (context, state) {
                  if (state is FilteredBaseStateReadyForUI) {
                    return AreasListView(
                      areas: state.filteredItems as List<Area>,
                      scrollController: scrollController,
                      key: Key('ListviewArea' + country.name),
                    );
                  }
                  return Text('');
                },
              );
            }
            return Text('');
            // TODO: other stated
          }),
        ));
  }
}
