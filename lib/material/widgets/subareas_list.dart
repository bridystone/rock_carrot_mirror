import 'package:flutter/material.dart';
import 'package:rock_carrot/material/widgets/subarea_tile.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

class SubareasListView extends StatelessWidget {
  final List<Subarea> subareas;

  const SubareasListView({
    Key? key,
    required this.subareas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return subareas.isEmpty
        ? ListView.builder(
            itemCount: 1,
            itemBuilder: (context, i) {
              return Center(child: Text('Scroll down to update'));
            },
          )
        : ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: subareas.length,
            itemBuilder: (context, i) {
              final subarea = subareas[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // Cubit for updating Timestamp
                SubareaTile(subarea: subarea),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ]);
            },
          );
  }
}
