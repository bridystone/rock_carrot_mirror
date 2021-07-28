import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rock_carrot/blocs/filtered/filtered_rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_routes_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_subareas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';

class SortIcon extends StatelessWidget {
  final bool visible;
  final Function(dynamic) onSelected;
  final dynamic selectedSorting;
  const SortIcon({
    Key? key,
    required this.visible,
    required this.onSelected,
    required this.selectedSorting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).textTheme.bodyText2!;
    // TODO: active Filter visible - not updated, because of missing BlocBuilder
    /*
    final activeStyle = Theme.of(context)
        .textTheme
        .bodyText2!
        .copyWith(color: Theme.of(context).accentColor);
        */
    final activeStyle = defaultStyle;
    final button = _Button(
      onSelected: onSelected,
      selectedSorting: selectedSorting,
      activeStyle: activeStyle,
      defaultStyle: defaultStyle,
    );
    return AnimatedOpacity(
      opacity: visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 150),
      child: visible
          ? button
          : IgnorePointer(
              child: button,
            ),
    );
  }
}

class _Button extends StatelessWidget {
  _Button({
    Key? key,
    required this.onSelected,
    required this.selectedSorting,
    required this.activeStyle,
    required this.defaultStyle,
  }) : super(key: key);

  final PopupMenuItemSelected onSelected;
  final dynamic selectedSorting;
  final TextStyle activeStyle;
  final TextStyle defaultStyle;

  @override
  Widget build(BuildContext context) {
    // localizationsmapping
    final locale = AppLocalizations.of(context);
    final sortingLocalizations = {
      if (selectedSorting is BaseSorting) ...{
        BaseSorting.unsorted: locale.sortingUnsorted,
        BaseSorting.nameAscending: locale.sortingNameAscending,
        BaseSorting.nameDescending: locale.sortingNameDescending,
      },
      if (selectedSorting is SubareaSorting) ...{
        SubareaSorting.unsorted: locale.sortingUnsorted,
        SubareaSorting.nameAscending: locale.sortingNameAscending,
        SubareaSorting.nameDescending: locale.sortingNameDescending,
        SubareaSorting.numberAscending: locale.sortingNumberAscending,
        SubareaSorting.numberDescending: locale.sortingNumberDescending,
      },
      if (selectedSorting is RockSorting) ...{
        RockSorting.unsorted: locale.sortingUnsorted,
        RockSorting.nameAscending: locale.sortingNameAscending,
        RockSorting.nameDescending: locale.sortingNameDescending,
        RockSorting.numberAscending: locale.sortingNumberAscending,
        RockSorting.numberDescending: locale.sortingNumberDescending,
      },
      if (selectedSorting is RouteSorting) ...{
        RouteSorting.unsorted: locale.sortingUnsorted,
        RouteSorting.nameAscending: locale.sortingNameAscending,
        RouteSorting.nameDescending: locale.sortingNameDescending,
        RouteSorting.numberAscending: locale.sortingNumberAscending,
        RouteSorting.numberDescending: locale.sortingNumberDescending,
        RouteSorting.difficultyAscending: locale.sortingDifficultyAscending,
        RouteSorting.difficultyDescending: locale.sortingDifficultyDescending,
      },
    };
    return PopupMenuButton(
      tooltip: locale.sortingTooltip,
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => ((selectedSorting is BaseSorting)
              ? BaseSorting.values
              : (selectedSorting is SubareaSorting)
                  ? SubareaSorting.values
                  : (selectedSorting is RockSorting)
                      ? RockSorting.values
                      : RouteSorting.values)
          .map<PopupMenuItem>((sorting) => PopupMenuItem(
              value: sorting,
              child: Text(
                sortingLocalizations[sorting]!,
                //sorting.toString(),
                style: selectedSorting == sorting ? activeStyle : defaultStyle,
              )))
          .toList(),
      icon: Icon(
        Icons.sort_by_alpha_outlined,
      ),
    );
  }
}
