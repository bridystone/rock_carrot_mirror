import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/areas/filtered_areas/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/filtered_countries/filtered_countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks/filtered_rocks/filtered_rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes/filtered_routes/filtered_routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas/filtered_subareas/filtered_subareas_bloc.dart';

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
    return PopupMenuButton(
      tooltip: 'Sorting',
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => selectedSorting is CountriesSorting
          ? CountriesSorting.values
              .map<PopupMenuItem<CountriesSorting>>(
                  (sorting) => PopupMenuItem<CountriesSorting>(
                      value: sorting,
                      child: Text(
                        sorting.toString(),
                        style: selectedSorting == sorting
                            ? activeStyle
                            : defaultStyle,
                      )))
              .toList()
          : selectedSorting is AreasSorting
              ? AreasSorting.values
                  .map<PopupMenuItem<AreasSorting>>(
                      (sorting) => PopupMenuItem<AreasSorting>(
                          value: sorting,
                          child: Text(
                            sorting.toString(),
                            style: selectedSorting == sorting
                                ? activeStyle
                                : defaultStyle,
                          )))
                  .toList()
              : selectedSorting is SubareasSorting
                  ? SubareasSorting.values
                      .map<PopupMenuItem<SubareasSorting>>(
                          (sorting) => PopupMenuItem<SubareasSorting>(
                              value: sorting,
                              child: Text(
                                sorting.toString(),
                                style: selectedSorting == sorting
                                    ? activeStyle
                                    : defaultStyle,
                              )))
                      .toList()
                  : selectedSorting is RocksSorting
                      ? RocksSorting.values
                          .map<PopupMenuItem<RocksSorting>>(
                              (sorting) => PopupMenuItem<RocksSorting>(
                                  value: sorting,
                                  child: Text(
                                    sorting.toString(),
                                    style: selectedSorting == sorting
                                        ? activeStyle
                                        : defaultStyle,
                                  )))
                          .toList()
                      : selectedSorting is RoutesSorting
                          ? RoutesSorting.values
                              .map<PopupMenuItem<RoutesSorting>>(
                                  (sorting) => PopupMenuItem<RoutesSorting>(
                                      value: sorting,
                                      child: Text(
                                        sorting.toString(),
                                        style: selectedSorting == sorting
                                            ? activeStyle
                                            : defaultStyle,
                                      )))
                              .toList()
                          : throw UnimplementedError(),
      icon: Icon(Icons.sort_by_alpha_outlined),
    );
  }
}
