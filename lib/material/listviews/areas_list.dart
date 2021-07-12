import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/material/listviews/area_tile.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreasListView extends StatelessWidget {
  final List<Area> areas;
  final ScrollController scrollController;

  const AreasListView({
    Key? key,
    required this.areas,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return areas.isEmpty
        ? ListView.builder(
            itemCount: 1,
            itemBuilder: (context, i) {
              return Center(child: Text('Scroll down to update'));
            },
          )
        : ListView.builder(
            // next two items are for storing the scroll position
            controller: scrollController,
            key: PageStorageKey<String>(key.toString() + 'AreasScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: areas.length,
            itemBuilder: (context, i) {
              final area = areas[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                BlocProvider(
                  create: (context) =>
                      SubareasBloc()..add(SubareasEvent.requestSubareas(area)),
                  child: AreaTile(area: area),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ]);
            },
          );
  }
}
