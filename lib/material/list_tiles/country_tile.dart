import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_countries_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryTile extends StatelessWidget {
  final CountryBloc countryBloc;

  const CountryTile({
    Key? key,
    required this.countryBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    countryBloc.childBloc.add(BaseEventRequestData(countryBloc.item));
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          onTap: () => BlocProvider.of<FilteredCountriesBloc>(context)
              .add(FilteredBaseEventPinItem(countryBloc.item)),
        )
      ],
      secondaryActions: [
        IconSlideAction(
          caption: 'Update',
          color: Colors.green,
          icon: Icons.update,
          onTap: () =>
              countryBloc.childBloc.add(BaseEventUpdateData(countryBloc.item)),
        )
      ], //secondarySlideActions,
      child: _countryTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _countryTileTap(BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<ViewBloc>(context)
          .add(ViewEvent.toAreas(countryBloc)),
      child: _countryTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _countryTileContent(BuildContext context) {
    return ListTile(
      tileColor:
          countryBloc.item.isPinned ? Theme.of(context).highlightColor : null,
      title: Text(
        countryBloc.item.name,
        style: Theme.of(context).textTheme.headline4,
      ),
      trailing: BlocBuilder<AreasBloc, BaseState>(
        bloc: countryBloc.childBloc,
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
                          (state.blocedItems.first as AreaBloc)
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
        },
      ),
    );
  }
}
