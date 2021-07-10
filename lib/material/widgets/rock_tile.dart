import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      actions: [], //todo primarySlideActions
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
      title: Text(rock.gipfelName),
      trailing: Container(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('${rock.childCount}')],
        ),
      ),
    );
  }
}
