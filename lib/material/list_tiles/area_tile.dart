import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

class AreaTile extends StatelessWidget {
  final Area area;

  const AreaTile({
    Key? key,
    required this.area,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SubareasBloc>(context).add(BaseEventRequestData(area));

    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          onTap: () => BlocProvider.of<FilteredAreasBloc>(context)
              .add(FilteredBaseEventPinItem(area)),
        )
      ],
      secondaryActions: [
        IconSlideAction(
            caption: 'Update',
            color: Colors.green,
            icon: Icons.update,
            onTap: () async {
              BlocProvider.of<SubareasBloc>(context)
                  .add(BaseEventUpdateData(area));
            }),
        IconSlideAction(
            caption: 'Update All',
            color: Colors.greenAccent,
            icon: Icons.system_update,
            onTap: () async {
              BlocProvider.of<SubareasBloc>(context)
                  .add(BaseEventUpdateDataIntensive(area));
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
        tileColor: area.isPinned ? Theme.of(context).highlightColor : null,
        title: Text(
          area.name,
          style: Theme.of(context).textTheme.headline4,
        ),
        trailing:
            BlocBuilder<SubareasBloc, BaseState>(builder: (context, state) {
          if (state is BaseStateUpdateInProgress) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${state.step}: ${state.percent}',
                  textScaleFactor: 0.7,
                ),
              ],
            );
          }
          if (state is BaseStateDataReceived) {
            return Container(
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${state.items.length}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  if (state.items.isNotEmpty) ...[
                    Text(
                      DateFormat('dd.MM.yy').format(
                          (state.items as List<Subarea>).first.lastUpdated),
                      textScaleFactor: 0.7,
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ]
                ],
              ),
            );
          }
          return Text('');
        }));
  }
}
