import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubareaTile extends StatelessWidget {
  final Subarea subarea;

  const SubareaTile({
    Key? key,
    required this.subarea,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [], //todo primarySlideActions
      secondaryActions: [], //secondarySlideActions,
      child: _subareaTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _subareaTileTap(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toRocks(subarea));
      },
      child: _subareaTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _subareaTileContent(BuildContext context) {
    return ListTile(
      title: Text(subarea.sektornameD),
      trailing: Container(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('${subarea.childCount}')],
        ),
      ),
    );
  }
}
