import 'package:flutter/material.dart' hide Route;
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/routes_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutesScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;
  final Rock rock;

  const RoutesScreen({
    Key? key,
    required this.rock,
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
              Text(rock.getName()),
              // comment icon
              CommentsIcon(
                commentType: CommentType.Rock,
                id: rock.id,
                enabled: rock.commentCount > 0,
              ),

              TextFormField(
                initialValue: 'Filter',
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: BlocBuilder<RoutesBloc, RoutesState>(
          builder: (context, state) => state.when(
            inProgress: () => CircularProgressIndicator(),
            routesReceived: (rock, routes) => RoutesListView(
                routes: routes,
                scrollController: scrollController,
                // use key to ensure that scroll position is stored per subarea
                // TODO: put key generation in list.dart? - also for the other items?
                key: Key(
                    'ListviewRoutes' + rock.getName() + rock.id.toString())),
            failure: () => Text('Snackbar'),
            initial: () => Text('should not happen: '),
          ),
        ),
      ),
    );
  }
}
