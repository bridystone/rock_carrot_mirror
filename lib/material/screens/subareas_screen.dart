import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/subareas/filtered_subareas/filtered_subareas_bloc.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/subareas_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              .add(FilteredSubareasEvent.filterUpdated(filterText)),
          selectedValue: filteredSubareasBloc.currentSorting,
          onSortingChanged: (selectedSorting) => filteredSubareasBloc.add(
            FilteredSubareasEvent.sortingUpdated(selectedSorting),
          ),
          commentsIcon: CommentsIcon(
            commentType: CommentType.Area,
            id: area.id,
            enabled: area.commentCount > 0,
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: RefreshIndicator(
          onRefresh: () async => BlocProvider.of<SubareasBloc>(context)
              .add(SubareasEvent.updateSubareas(area)),
          child: BlocBuilder<SubareasBloc, SubareasState>(
            builder: (context, state) => state.when(
              inProgress: () => CircularProgressIndicator(),
              subareasReceived: (area, subareas) =>
                  BlocBuilder<FilteredSubareasBloc, FilteredSubareasState>(
                builder: (context, state) {
                  return state.when(
                      initial: () => Text(''),
                      readyForUI: (subareas, filter, sorting) => SubareasListView(
                          subareas: subareas,
                          scrollController: scrollController,
                          // use key to ensure that scroll position is stored per country
                          key: Key('ListviewArea' + area.name)));
                },
              ),
              failure: (dynamic e) => Text('Snackbar'),
              initial: () => Text('should not happen: '),
              updateInProgress: (step, percentage) => Text(': '),
              updateFinished: (result) => Text('Finished: '),
            ),
          ),
        ),
      ),
    );
  }
}
