import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_subareas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/web/teufelsturm.dart';

class SubareaTile extends StatelessWidget {
  final SubareaBloc subareaBloc;

  const SubareaTile({
    Key? key,
    required this.subareaBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    subareaBloc.childBloc.add(BaseEventRequestData(subareaBloc.item));
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          onTap: () => BlocProvider.of<FilteredSubareasBloc>(context)
              .add(FilteredBaseEventPinItem(subareaBloc.item)),
        )
      ], //todo primarySlideActions
      secondaryActions: [
        IconSlideAction(
            caption: 'Update',
            color: Colors.green,
            icon: Icons.update,
            onTap: () async {
              subareaBloc.childBloc.add(BaseEventUpdateData(subareaBloc.item));
            }),
        if (sandsteinIdTeufelsturmAreaIdMap
            .containsKey(subareaBloc.item.id)) ...[
          IconSlideAction(
              caption: 'Scrape TT',
              color: Colors.greenAccent,
              icon: Icons.system_update,
              onTap: () async {
                subareaBloc.childBloc
                    .add(BaseEventUpdateDataIntensive(subareaBloc.item));
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
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toRocks(subareaBloc));
      },
      child: _subareaTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _subareaTileContent(BuildContext context) {
    return ListTile(
        tileColor:
            subareaBloc.item.isPinned ? Theme.of(context).highlightColor : null,
        title: Row(
          children: [
            if (subareaBloc.item.nr != 0) ...[
              Text(
                '${subareaBloc.item.nr} ',
                style: Theme.of(context).textTheme.headline4,
              )
            ],
            Text(
              subareaBloc.item.name,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        subtitle: subareaBloc.item.secondLanguageName.isNotEmpty
            ? Text(subareaBloc.item.secondLanguageName)
            : null,
        trailing: BlocBuilder<RocksBloc, BaseState>(
            bloc: subareaBloc.childBloc,
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
                final rocks = state.blocedItems as List<RockBloc>;
                return Container(
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '${rocks.length}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      if (rocks.isNotEmpty) ...[
                        Text(
                          DateFormat('dd.MM.yy')
                              .format(rocks.first.item.lastUpdated),
                          textScaleFactor: 0.7,
                          style: Theme.of(context).textTheme.headline4,
                        )
                      ],
                      if (rocks.isNotEmpty &&
                          rocks.first.item.lastUpdatedTT != null) ...[
                        Text(
                          '[' +
                              DateFormat('dd.MM.yy')
                                  .format(rocks.first.item.lastUpdatedTT!) +
                              ']',
                          textScaleFactor: 0.7,
                          style: Theme.of(context).textTheme.headline4,
                        )
                      ],
                    ],
                  ),
                );
              }
              return Text('');
            }));
  }
}
