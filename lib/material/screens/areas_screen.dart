import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/material/lists/areas_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';

class AreasScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;
  final CountryBloc countryBloc;

  const AreasScreen({
    Key? key,
    required this.scrollController,
    required this.bottomNavigationBar,
    required this.countryBloc,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final filteredAreasBloc = BlocProvider.of<FilteredAreasBloc>(context);

    return Scaffold(
      appBar: RockCarrotAppBar(
        headline: countryBloc.item.name,
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
            .add(BaseEventUpdateData(countryBloc.item)),
        child: BlocConsumer<AreasBloc, BaseState>(
          builder: (context, state) {
            if (state is BaseStateInProgress) {
              return CircularProgressIndicator();
            }
            if (state is BaseStateDataReceived) {
              return BlocBuilder<FilteredAreasBloc, FilteredBaseState>(
                builder: (context, state) {
                  if (state is FilteredBaseStateReadyForUI) {
                    return AreasListView(
                      areas: state.filteredItems as List<AreaBloc>,
                      scrollController: scrollController,
                      key: Key('ListviewArea' + countryBloc.item.name),
                    );
                  }
                  ScaffoldMessenger.of(context)
                      .showSnackBar(UnhandledStateSnack(state));
                  throw (UnimplementedError());
                },
              );
            }
            ScaffoldMessenger.of(context)
                .showSnackBar(UnhandledStateSnack(state));
            throw (UnimplementedError());
          },
          // listen on Failure Exceptions
          listenWhen: (prev, next) => next is BaseStateFailure,
          listener: (context, state) {
            if (state is BaseStateFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(ErrorSnack(state.exception.toString()));
            }
          },
        ),
      ),
    );
  }
}
