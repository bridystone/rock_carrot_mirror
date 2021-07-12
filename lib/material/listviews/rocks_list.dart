import 'package:flutter/material.dart';
import 'package:rock_carrot/material/listviews/rock_tile.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';

class RocksListView extends StatelessWidget {
  final List<Rock> rocks;
  final ScrollController scrollController;

  const RocksListView({
    Key? key,
    required this.rocks,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return rocks.isEmpty
        ? ListView.builder(
            itemCount: 1,
            itemBuilder: (context, i) {
              return Center(child: Text('Scroll down to update'));
            },
          )
        : ListView.builder(
            // next two items are for storing the scroll position
            controller: scrollController,
            key: PageStorageKey<String>(key.toString() + 'RocksScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: rocks.length,
            itemBuilder: (context, i) {
              final rock = rocks[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // Cubit for updating Timestamp
                RockTile(rock: rock),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ]);
            },
          );
  }
}
