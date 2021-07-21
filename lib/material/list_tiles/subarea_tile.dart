import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
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
    BlocProvider.of<RocksBloc>(context).add(BaseEventRequestData(subarea));

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
      secondaryActions: [
        IconSlideAction(
            caption: 'Update',
            color: Colors.green,
            icon: Icons.update,
            onTap: () async {
              BlocProvider.of<RocksBloc>(context)
                  .add(BaseEventUpdateData(subarea));
            }),
        if (sandsteinIdTeufelsturmAreaIdMap.containsKey(subarea.id)) ...[
          IconSlideAction(
              caption: 'Scrape TT',
              color: Colors.greenAccent,
              icon: Icons.system_update,
              onTap: () async {
                BlocProvider.of<RocksBloc>(context)
                    .add(BaseEventUpdateDataIntensive(subarea));
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
    return ListTile(
        title: Row(
          children: [
            if (subarea.nr != 0) ...[
              Text(
                '${subarea.nr} ',
                style: Theme.of(context).textTheme.headline4,
              )
            ],
            Text(
              subarea.name,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        subtitle: subarea.secondLanguageName.isNotEmpty
            ? Text(subarea.secondLanguageName)
            : null,
        trailing: BlocBuilder<RocksBloc, BaseState>(builder: (context, state) {
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
            final rocks = state.items as List<Rock>;
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
                      DateFormat('dd.MM.yy').format(rocks.first.lastUpdated),
                      textScaleFactor: 0.7,
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ],
                  if (rocks.isNotEmpty &&
                      rocks.first.lastUpdatedTT != null) ...[
                    Text(
                      '[' +
                          DateFormat('dd.MM.yy')
                              .format(rocks.first.lastUpdatedTT!) +
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
