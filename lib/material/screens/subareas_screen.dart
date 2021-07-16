import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/subareas_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
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
    return BlocProvider(
      create: (context) => CommentsBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(area.name),
              // comment icon
              CommentsIcon(
                commentType: CommentType.Area,
                id: area.id,
                enabled: area.commentCount > 0,
              ),
              TextFormField(
                initialValue: 'Filter',
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: RefreshIndicator(
          onRefresh: () async => BlocProvider.of<SubareasBloc>(context)
              .add(SubareasEvent.updateSubareas(area)),
          child: BlocBuilder<SubareasBloc, SubareasState>(
            builder: (context, state) => state.when(
              inProgress: () => CircularProgressIndicator(),
              subareasReceived: (area, subareas) => SubareasListView(
                subareas: subareas,
                scrollController: scrollController,
                // use key to ensure that scroll position is stored per area
                key: Key('ListviewSubarea' + area.name + area.id.toString()),
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
