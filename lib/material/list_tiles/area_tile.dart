import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaTile extends StatelessWidget {
  final Area area;

  const AreaTile({
    Key? key,
    required this.area,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SubareasBloc>(context)
        .add(SubareasEvent.requestSubareas(area));

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
      ],
      secondaryActions: [
        IconSlideAction(
            caption: 'Update',
            color: Colors.green,
            icon: Icons.update,
            onTap: () async {
              BlocProvider.of<SubareasBloc>(context)
                  .add(SubareasEvent.updateSubareas(area));
            }),
        IconSlideAction(
            caption: 'Update All',
            color: Colors.greenAccent,
            icon: Icons.system_update,
            onTap: () async {
              BlocProvider.of<SubareasBloc>(context)
                  .add(SubareasEvent.updateSubareasInklSubitems(area));
            }),
      ], //secondarySlideActions,
      child: _areaTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _areaTileTap(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toSubareas(area));
      },
      child: _areaTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _areaTileContent(BuildContext context) {
    return ListTile(
        title: Text(area.name),
        trailing: BlocBuilder<SubareasBloc, SubareasState>(
          builder: (context, state) => state.maybeWhen(
            updateInProgress: (step, percent) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '$step: $percent',
                  textScaleFactor: 0.7,
                ),
              ],
            ),
            subareasReceived: (area, subareas) => Container(
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('${subareas.length}'),
                  if (subareas.isNotEmpty) ...[
                    Text(
                      DateFormat('dd.MM.yy').format(subareas.first.lastUpdated),
                      textScaleFactor: 0.7,
                    )
                  ]
                ],
              ),
            ),
            orElse: () => Text(''),
          ),
        ));
  }
}
