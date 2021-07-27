import 'package:flutter/material.dart' hide Route;
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:rock_carrot/material/comments_bottom_sheet.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteTile extends StatelessWidget {
  final Route route;

  const RouteTile({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      secondaryActions: [], //secondarySlideActions,
      child: _routeTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _routeTileTap(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentsBloc(),
      child: ExpansionTile(
        title: _routeTileContent(context),
        children: _routeTileExpansion(context),
      ),
    );
  }

  /// the actual Content of the Tile
  Widget _routeTileContent(BuildContext context) {
    return ListTile(
      title: Text.rich(
        // use rich text to combine Text and Icon and NOT overflow on long route names
        TextSpan(
          children: [
            TextSpan(
              text: route.nr.toString() + ' ' + route.getName(),
            ),
            WidgetSpan(
              child: (route.commentCount > 0)
                  ? Icon(
                      Icons.comment,
                      size: 15,
                    )
                  : Container(),
            ),
          ],
        ),
      ),

      // TODO: use getter / when fixed
      subtitle: route.getSecondLanguageName().isNotEmpty
          ? Text(route.getSecondLanguageName())
          : null,
      trailing: Text('${route.difficulty.DifficultyFull ?? ''}'), //show grade
    );
  }

  /// the actual Content of the Tile
  List<Widget> _routeTileExpansion(BuildContext context) {
    return [
      BlocConsumer<CommentsBloc, CommentsState>(
        //listenWhen: (prevState, nextState) => true,
        listener: (context, state) {
          state.maybeWhen(
            commentsReceived: (comments) => comments.isEmpty
                ? ScaffoldMessenger.of(context)
                    .showSnackBar(InfoSnack('no Comments available'))
                : CommentsBottomSheet().showCommentsSheet(context, comments),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return ListTile(
            trailing: Text(
              (route.rings ?? 0).toString(),
              style: TextStyle(fontSize: 10),
            ),
            title: Text(
              route.climbingStyle.isNotEmpty
                  ? route.climbingStyle + '\n' + route.getDescription()
                  : route.getDescription(),
              style: TextStyle(fontSize: 12),
            ),
            subtitle: Text(
              // concat string for first ascent
              route.firstAscentLead +
                  (route.firstAscentLead.isNotEmpty ? ', ' : '') +
                  route.firstAscentPartners +
                  (route.firstAscentPartners.isNotEmpty ? ', ' : '') +
                  ((route.firstAscentDate != null)
                      ? DateFormat('dd.MM.yy').format(route.firstAscentDate!)
                      : ''),
              style: TextStyle(fontSize: 12),
            ),
            onTap: () async {
              BlocProvider.of<CommentsBloc>(context).add(
                  CommentsEvent.requestComments(CommentType.Route, route.id));
            },
          );
        },
      ),
    ];
  }
}
