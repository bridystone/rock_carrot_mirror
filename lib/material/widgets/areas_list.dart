import 'package:flutter/material.dart';
import 'package:rock_carrot/material/widgets/area_tile.dart';
import 'package:rock_carrot/models/sandstein/area.dart';

class AreasListView extends StatelessWidget {
  final List<Area> areas;

  const AreasListView({
    Key? key,
    required this.areas,
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
            padding: EdgeInsets.all(0),
            itemCount: areas.length,
            itemBuilder: (context, i) {
              final area = areas[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // Cubit for updating Timestamp
                AreaTile(area: area),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ]);
            },
          );
  }
}
