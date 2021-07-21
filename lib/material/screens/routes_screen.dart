import 'package:flutter/material.dart' hide Route;
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_routes_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/routes_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/maps_icon.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
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
    final filteredRoutesBloc = BlocProvider.of<FilteredRoutesBloc>(context);

    return BlocProvider(
        create: (context) => CommentsBloc(),
        child: Scaffold(
            appBar: RockCarrotAppBar(
              headline: rock.name,
              initialFilterValue: filteredRoutesBloc.currentFilter,
              onFilterChanged: (filterText) => filteredRoutesBloc
                  .add(FilteredBaseEventFilterUpdated(filterText)),
              selectedValue: filteredRoutesBloc.currentSorting,
              onSortingChanged: (selectedSorting) => filteredRoutesBloc.add(
                FilteredBaseEventSortingUpdated(selectedSorting),
              ),
              commentsIcon: CommentsIcon(
                baseitem: rock,
                enabled: rock.commentCount > 0,
              ),
              mapsIcon: MapsIcon(
                latitude: rock.latitude,
                longitude: rock.longitude,
                name: rock.name,
              ),
            ),
            bottomNavigationBar: bottomNavigationBar,
            body: BlocBuilder<RoutesBloc, BaseState>(builder: (context, state) {
              if (state is BaseStateInProgress) {
                return CircularProgressIndicator();
              }
              if (state is BaseStateDataReceived) {
                return BlocBuilder<FilteredRoutesBloc, FilteredBaseState>(
                  builder: (context, state) {
                    if (state is FilteredBaseStateReadyForUI) {
                      return RoutesListView(
                          routes: state.filteredItems as List<Route>,
                          scrollController: scrollController,
                          // use key to ensure that scroll position is stored per route
                          // TODO: put key generation in list.dart? - also for the other items?
                          key: Key('ListviewRoutes' +
                              rock.name +
                              rock.id.toString()));
                    }
                    return Text('');
                  },
                );
              }
              return Text('');
            })));
  }
}
