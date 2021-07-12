import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/web/teufelsturm.dart';

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
      secondaryActions: [
        IconSlideAction(
            caption: 'Update',
            color: Colors.green,
            icon: Icons.update,
            onTap: () async {
              BlocProvider.of<RocksBloc>(context)
                  .add(RocksEvent.updateRocks(subarea));
            }),
        if (sandsteinIdTeufelsturmAreaIdMap.containsKey(subarea.sektorid)) ...[
          IconSlideAction(
              caption: 'Scrape TT',
              color: Colors.greenAccent,
              icon: Icons.system_update,
              onTap: () async {
                BlocProvider.of<RocksBloc>(context)
                    .add(RocksEvent.updateRocksTT(subarea));
              }),
        ],
      ], //secondarySlid, //secondarySlideActions,
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
    return BlocBuilder<RocksBloc, RocksState>(
      builder: (context, state) {
        return ListTile(
          title: Text(subarea.sektornameD),
          subtitle: state.when(
            initial: () => Text('initial'),
            inProgress: () => Text('inProgress'),
            rocksReceived: (subarea, rocks) => Text(rocks.length.toString()),
            updateInProgress: (step, percentage) =>
                Text('Update $step: $percentage'),
            updateFinished: (result) => Text(''),
            failure: (dynamic exception) => Text(''),
          ),
          trailing: Container(
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('${subarea.childCount}')],
            ),
          ),
        );
      },
    );
  }
}
