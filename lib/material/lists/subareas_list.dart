import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/material/list_tiles/subarea_tile.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubareasListView extends StatelessWidget {
  final List<Subarea> subareas;
  final ScrollController scrollController;

  const SubareasListView({
    Key? key,
    required this.subareas,
    required this.scrollController,
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
            // next two items are for storing the scroll position
            controller: scrollController,
            key: PageStorageKey<String>(key.toString() + 'SubareasScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: subareas.length,
            itemBuilder: (context, i) {
              final subarea = subareas[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // Cubit for updating Timestamp
                BlocProvider(
                  // create temporary Bloc provider for each subitem, to gain relevant data
                  // add event to retrieve data
                  create: (context) => RocksBloc(),
                  child: SubareaTile(subarea: subarea),
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
