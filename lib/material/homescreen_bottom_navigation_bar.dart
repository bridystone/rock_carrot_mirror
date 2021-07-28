import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';

class HomeScreenBottomNavigationBar extends StatelessWidget {
  final int currentNavigationState;
  const HomeScreenBottomNavigationBar({
    Key? key,
    required this.currentNavigationState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewBloc = BlocProvider.of<ViewBloc>(context);
    final locale = AppLocalizations.of(context);
    return BottomNavigationBar(
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedIconTheme: Theme.of(context).iconTheme,
      unselectedIconTheme: Theme.of(context).accentIconTheme,
      backgroundColor: Theme.of(context).bottomAppBarColor,
      currentIndex: currentNavigationState,
      onTap: (index) {
        switch (index) {
          case 0:
            return viewBloc.add(ViewEvent.toCountriesWithoutReload());
          case 1:
            return viewBloc.isAreasValid
                ? viewBloc.add(ViewEvent.toAreasWithoutReload())
                : null;
          case 2:
            return viewBloc.isSubareasValid
                ? viewBloc.add(ViewEvent.toSubareasWithoutReload())
                : null;
          case 3:
            return viewBloc.isRocksValid
                ? viewBloc.add(ViewEvent.toRocksWithoutReload())
                : null;
          case 4:
            return viewBloc.isRoutesValid
                ? viewBloc.add(ViewEvent.toRoutesWithoutReload())
                : null;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: locale.homeBottomNavigationCountry,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: locale.homeBottomNavigationArea,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: locale.homeBottomNavigationSubarea,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: locale.homeBottomNavigationRock,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: locale.homeBottomNavigationRoute,
        ),
      ],
    );
  }
}
