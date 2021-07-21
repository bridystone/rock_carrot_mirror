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
      //backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 170,
                child: Text(
                  headline,
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                width: 170,
                height: 20,
                child: TextFormField(
                  maxLines: 1,
                  initialValue: initialFilterValue,
                  onChanged: onFilterChanged,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (mapsIcon != null) ...[
                Transform.translate(
                    offset: Offset(0, 0),
                    child: SizedBox(
                      width: 30,
                      child: mapsIcon!,
                    ))
              ],
              if (commentsIcon != null) ...[
                Transform.translate(
                    offset: Offset(0, 0),
                    child: SizedBox(
                      width: 30,
                      child: commentsIcon!,
                    )),
              ],
              Transform.translate(
                offset: Offset(0, 0),
                child: SizedBox(
                  width: 30,
                  child: SortIcon(
                      visible: true,
                      onSelected: onSortingChanged,
                      selectedSorting: selectedValue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
