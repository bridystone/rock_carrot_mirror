import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/rocks_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RocksScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;
  final Subarea subarea;

  const RocksScreen({
    Key? key,
    required this.subarea,
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
                Text(subarea.getName()),
                // comment icon
                CommentsIcon(
                  commentType: CommentType.Subarea,
                  id: subarea.id,
                  enabled: subarea.commentCount > 0,
                ),

                TextFormField(
                  initialValue: 'Filter',
                ),
              ],
            ),
          ),
          bottomNavigationBar: bottomNavigationBar,
          body: RefreshIndicator(
            onRefresh: () async => BlocProvider.of<RocksBloc>(context)
                .add(RocksEvent.updateRocks(subarea)),
            child: BlocBuilder<RocksBloc, RocksState>(
              builder: (context, state) => state.when(
                inProgress: () => CircularProgressIndicator(),
                rocksReceived: (subarea, rocks) => RocksListView(
                  rocks: rocks,
                  scrollController: scrollController,
                  // use key to ensure that scroll position is stored per subarea
                  key: Key('ListviewRocks' +
                      subarea.getName() +
                      subarea.id.toString()),
                ),
                failure: (dynamic e) => Text('Snackbar'),
                initial: () => Text('should not happen: '),
                updateInProgress: (step, percentage) => Text(': '),
                updateFinished: (result) => Text('Finished: '),
              ),
            ),
          )),
    );
  }
}
