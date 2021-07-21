import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/lists/rocks_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
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
    final filteredRocksBloc = BlocProvider.of<FilteredRocksBloc>(context);

    return BlocProvider(
        create: (context) => CommentsBloc(),
        child: Scaffold(
          appBar: RockCarrotAppBar(
            headline: subarea.name,
            initialFilterValue: filteredRocksBloc.currentFilter,
            onFilterChanged: (filterText) => filteredRocksBloc
                .add(FilteredBaseEventFilterUpdated(filterText)),
            selectedValue: filteredRocksBloc.currentSorting,
            onSortingChanged: (selectedSorting) => filteredRocksBloc.add(
              FilteredBaseEventSortingUpdated(selectedSorting),
            ),
            commentsIcon: CommentsIcon(
              baseitem: subarea,
              enabled: subarea.commentCount > 0,
            ),
          ),
          bottomNavigationBar: bottomNavigationBar,
          body: RefreshIndicator(
            onRefresh: () async => BlocProvider.of<RocksBloc>(context)
                .add(BaseEventUpdateData(subarea)),
            child: BlocBuilder<RocksBloc, BaseState>(builder: (context, state) {
              if (state is BaseStateInProgress) {
                return CircularProgressIndicator();
              }
              if (state is BaseStateDataReceived) {
                return BlocBuilder<FilteredRocksBloc, FilteredBaseState>(
                  builder: (context, state) {
                    if (state is FilteredBaseStateReadyForUI) {
                      return RocksListView(
                        rocks: state.filteredItems as List<Rock>,
                        scrollController: scrollController,
                        key: Key('ListviewRock' + subarea.name),
                      );
                    }
                    return Text('');
                  },
                );
              }
              return Text('');
              // TODO: other stated
            }),
          ),
        ));
  }
}
