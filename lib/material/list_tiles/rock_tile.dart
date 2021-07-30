import 'package:flutter/material.dart' hide Route;
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RockTile extends StatelessWidget {
  final RockBloc rockBloc;

  const RockTile({
    Key? key,
    required this.rockBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    rockBloc.childBloc.add(BaseEventRequestData(rockBloc.item));
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          onTap: () => BlocProvider.of<FilteredRocksBloc>(context)
              .add(FilteredBaseEventPinItem(rockBloc.item)),
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
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toRoutes(rockBloc));
      },
      child: _rockTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _rockTileContent(BuildContext context) {
    return ListTile(
      tileColor: rockBloc.item.isPinned
          ? Theme.of(context).highlightColor
          : ((rockBloc.item.state == RockState.Demolished) ||
                  (rockBloc.item.state == RockState.FullyRestricted))
              ? Theme.of(context).disabledColor
              : null,
      title: Row(
        children: [
          if (rockBloc.item.nr != 0) ...[
            Text(
              '${rockBloc.item.nr} ',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
          Text(
            rockBloc.item.name,
            style: Theme.of(context).textTheme.headline4,
          ),
          // TODO: better marking here - possibly Icons
          if (rockBloc.item.state == RockState.PartlyRestricted) ...[
            Text(
              '[T]',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
          if (rockBloc.item.state == RockState.Demolished) ...[
            Text(
              '[E]',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
          if (rockBloc.item.state == RockState.FullyRestricted) ...[
            Text(
              '[X]',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
          if (rockBloc.item.state == RockState.TimelyRestricted) ...[
            Text(
              '[Z]',
              style: Theme.of(context).textTheme.headline4,
            ),
          ]
        ],
      ),
      subtitle: rockBloc.item.secondLanguageName.isNotEmpty
          ? Text(rockBloc.item.secondLanguageName)
          : null,
      trailing: BlocBuilder<RoutesBloc, BaseState>(
          bloc: rockBloc.childBloc,
          builder: (context, state) {
            if (state is BaseStateDataReceived) {
              final routes = state.blocedItems.cast<RouteBloc>();
              // identify easiest Route on the Rock
              // ternary operation: ensure that missing difficulty (==0) are handled
              routes.sort((a, b) => (b.item.difficulty.sortableDifficulty > 0)
                  ? a.item.difficulty.sortableDifficulty -
                      b.item.difficulty.sortableDifficulty
                  : -1);
              return Container(
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '${routes.length}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      if (routes.isNotEmpty) ...[
                        Text(
                          routes.first.item.difficulty.DifficultyFull ?? '',
                          style: Theme.of(context).textTheme.headline4,
                        )
                      ],
                    ],
                  ));
            }
            return Text('');
          }),
    );
  }
}
