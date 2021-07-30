import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';

class AreaTile extends StatelessWidget {
  final AreaBloc areaBloc;

  const AreaTile({
    Key? key,
    required this.areaBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    areaBloc.childBloc.add(BaseEventRequestData(areaBloc.item));
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          onTap: () => BlocProvider.of<FilteredAreasBloc>(context)
              .add(FilteredBaseEventPinItem(areaBloc.item)),
        )
      ],
      secondaryActions: [
        IconSlideAction(
            caption: 'Update',
            color: Colors.green,
            icon: Icons.update,
            onTap: () async {
              areaBloc.childBloc.add(BaseEventUpdateData(areaBloc.item));
            }),
        IconSlideAction(
            caption: 'Update All',
            color: Colors.greenAccent,
            icon: Icons.system_update,
            onTap: () async {
              areaBloc.childBloc
                  .add(BaseEventUpdateDataIntensive(areaBloc.item));
            }),
      ], //secondarySlideActions,
      child: _areaTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _areaTileTap(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toSubareas(areaBloc));
      },
      child: _areaTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _areaTileContent(BuildContext context) {
    return ListTile(
        tileColor:
            areaBloc.item.isPinned ? Theme.of(context).highlightColor : null,
        title: Text(
          areaBloc.item.name,
          style: Theme.of(context).textTheme.headline4,
        ),
        trailing: BlocBuilder<SubareasBloc, BaseState>(
            bloc: areaBloc.childBloc,
            builder: (context, state) {
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
                        '${state.blocedItems.length}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      if (state.blocedItems.isNotEmpty) ...[
                        Text(
                          DateFormat('dd.MM.yy').format(
                              (state.blocedItems.first as SubareaBloc)
                                  .item
                                  .lastUpdated),
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
