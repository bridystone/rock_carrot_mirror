import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_subareas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/subareas_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

class SubareasScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;
  final Area area;

  const SubareasScreen({
    Key? key,
    required this.area,
    required this.bottomNavigationBar,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredSubareasBloc = BlocProvider.of<FilteredSubareasBloc>(context);

    return BlocProvider(
      create: (context) => CommentsBloc(),
      child: Scaffold(
        appBar: RockCarrotAppBar(
          headline: area.name,
          initialFilterValue: filteredSubareasBloc.currentFilter,
          onFilterChanged: (filterText) => filteredSubareasBloc
              .add(FilteredBaseEventFilterUpdated(filterText)),
          selectedValue: filteredSubareasBloc.currentSorting,
          onSortingChanged: (selectedSorting) => filteredSubareasBloc.add(
            FilteredBaseEventSortingUpdated(selectedSorting),
          ),
          commentsIcon: CommentsIcon(
            baseitem: area,
            enabled: area.commentCount > 0,
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: RefreshIndicator(
          onRefresh: () async => BlocProvider.of<SubareasBloc>(context)
              .add(BaseEventUpdateData(area)),
          child: BlocConsumer<SubareasBloc, BaseState>(
            builder: (context, state) {
              if (state is BaseStateInProgress) {
                return CircularProgressIndicator();
              }
              if (state is BaseStateDataReceived) {
                return BlocBuilder<FilteredSubareasBloc, FilteredBaseState>(
                  builder: (context, state) {
                    if (state is FilteredBaseStateReadyForUI) {
                      return SubareasListView(
                        subareas: state.filteredItems as List<Subarea>,
                        scrollController: scrollController,
                        key: Key('ListviewSubarea' + area.name),
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
            }, // listen on Failure Exceptions
            listenWhen: (prev, next) => next is BaseStateFailure,
            listener: (context, state) {
              if (state is BaseStateFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(ErrorSnack(state.exception.toString()));
              }
            },
          ),
        ),
      ),
    );
  }
}
