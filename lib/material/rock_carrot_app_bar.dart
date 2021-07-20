import 'package:flutter/material.dart';
import 'package:rock_carrot/material/comments_icon.dart';
import 'package:rock_carrot/material/maps_icon.dart';
import 'package:rock_carrot/material/sort_icon.dart';

enum Sorting { unsorted, ascending, descending }

class RockCarrotAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String headline;
  final String? initialFilterValue;
  final Function(String) onFilterChanged;
  final dynamic selectedValue;
  final Function(dynamic) onSortingChanged;
  final CommentsIcon? commentsIcon;
  final MapsIcon? mapsIcon;

  const RockCarrotAppBar({
    Key? key,
    required this.headline,
    required this.initialFilterValue,
    required this.onFilterChanged,
    required this.selectedValue,
    required this.onSortingChanged,
    this.commentsIcon,
    this.mapsIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              headline,
              style: Theme.of(context).textTheme.headline6,
              maxLines: 2,
            ),
          ),
          SizedBox(
            width: 60,
            height: 20,
            child: TextFormField(
              maxLines: 1,
              initialValue: initialFilterValue,
              onChanged: onFilterChanged,
            ),
          ),
          SortIcon(
              visible: true,
              onSelected: onSortingChanged,
              selectedSorting: selectedValue),
          if (mapsIcon != null) ...[mapsIcon!],
          if (commentsIcon != null) ...[commentsIcon!],
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
