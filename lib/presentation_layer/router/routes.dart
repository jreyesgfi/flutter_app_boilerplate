import 'package:flutter/material.dart';

enum AppRoute {
  page1,
  page2,
  page3,
  settings,
  // not included in navigation
  subpage1,
  subpage2,
}

const int numberShowedRoutes = 4;

enum AppSubRoute {
  subpage1,
  subpage2,
}

AppRoute initialRoute = AppRoute.page1;
List<AppRoute> displayedRoutes = [
  AppRoute.page1,
  AppRoute.page2,
  AppRoute.page3,
  AppRoute.settings,
];

class NavigationDestinationItem {
  final String? iconPath;
  final String? selectedIconPath;
  final IconData? icon;
  final IconData? selectedIcon;
  final String label;
  final bool displayed;
  //final AppRoute route;

  NavigationDestinationItem({
    this.iconPath,
    this.selectedIconPath,
    this.icon,
    this.selectedIcon,
    this.displayed= true,
    required this.label,
    //required this.route,
  });
}
final Map<AppRoute,NavigationDestinationItem> navigationItems = {
  AppRoute.page1: NavigationDestinationItem(
    iconPath: "assets/icons/chrono.svg",
    selectedIconPath: "assets/icons/chrono.svg",
    label: "Página 1",
  ),
  AppRoute.page2:NavigationDestinationItem(
    iconPath: "assets/icons/chart.svg",
    selectedIconPath: "assets/icons/chart.svg",
    label: "Página 2",
  ),
  AppRoute.page3:NavigationDestinationItem(
    icon: Icons.format_list_bulleted,
    selectedIcon: Icons.format_list_bulleted,
    label: "Página 3",
  ),

  AppRoute.settings:NavigationDestinationItem(
    iconPath: "assets/icons/profile.svg",
    selectedIconPath: "assets/icons/profile.svg",
    label: "Ajustes",
  ),
  //not displayed in the navigation bar
  // NavigationDestinationItem(
  //   iconPath: "assets/icons/chrono.svg",
  //   selectedIconPath: "assets/icons/chrono.svg",
  //   label: "Nuevo Entrenamiento",
  //   displayed: false,
  // ),
};
