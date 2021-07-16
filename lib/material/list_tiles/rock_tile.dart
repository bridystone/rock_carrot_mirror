import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RockTile extends StatelessWidget {
  final Rock rock;

  const RockTile({
    Key? key,
    required this.rock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          // TODO: PIN ACTION
          onTap: () => null,
        )
      ], //todo primarySlideActions
      secondaryActions: [], //secondarySlideActions,
      child: _rockTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _rockTileTap(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toRoutes(rock));
      },
      child: _rockTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _rockTileContent(BuildContext context) {
    return ListTile(
      tileColor: // grey backgroud color for prohibited or collapsed peaks
          ((rock.state == RockState.Demolished) ||
                  (rock.state == RockState.FullyRestricted))
              ? Colors.grey
              : null,
      title: Row(
        children: [
          if (rock.nr != 0) ...[Text('${rock.nr} ')],
          // TODO: use getter / when fixed
          Text(rock.getName()),
          // TODO: better marking here - possibly Icons
          if (rock.state == RockState.PartlyRestricted) ...[
            Text('[T]'),
          ],
          if (rock.state == RockState.Demolished) ...[
            Text('[E]'),
          ],
          if (rock.state == RockState.FullyRestricted) ...[
            Text('[X]'),
          ],
          if (rock.state == RockState.TimelyRestricted) ...[
            Text('[Z]'),
          ]
        ],
      ),
      // TODO: use getter / when fixed
      subtitle: rock.getSecondLanguageName().isNotEmpty
          ? Text(rock.getSecondLanguageName())
          : null,
      trailing: BlocBuilder<RoutesBloc, RoutesState>(
        builder: (context, state) => state.maybeWhen(
          routesReceived: (rock, routes) {
            // identify easiest Route on the Rock
            // ternary operation: ensure that missing difficulty (==0) are handled
            routes.sort((a, b) => (b.difficulty.sortableDifficulty > 0)
                ? a.difficulty.sortableDifficulty -
                    b.difficulty.sortableDifficulty
                : -1);
            return Container(
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('${routes.length}'),
                  if (routes.isNotEmpty) ...[
                    Text(routes.first.difficulty.DifficultyFull ?? '')
                  ],
                ],
              ),
            );
          },
          orElse: () => Text(''),
        ),
      ),
    );
  }
}
