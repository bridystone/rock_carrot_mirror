import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/material/list_tiles/rock_tile.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        ? Center(child: Text('No Rocks '))
        : ListView.builder(
            // next two items are for storing the scroll position
            controller: scrollController,
            key: PageStorageKey<String>(key.toString() + 'RocksScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: rocks.length,
            itemBuilder: (context, i) {
              final rock = rocks[i];
              // exclude not useful items
              // TODO: really not useful?
              if ((rock.type == RockType.Aussicht) ||
                  (rock.type == RockType.Bergungsbox) ||
                  (rock.type == RockType.Camping) ||
                  (rock.type == RockType.Gaststaette) ||
                  (rock.type == RockType.Hoehle) ||
                  (rock.type == RockType.Huette) ||
                  (rock.type == RockType.Parkplatz)) {
                return Container();
              }
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                BlocProvider(
                  // create temporary Bloc provider for each subitem, to gain relevant data
                  // add event to retrieve data
                  create: (context) => RoutesBloc(),
                  child: RockTile(rock: rock),
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
