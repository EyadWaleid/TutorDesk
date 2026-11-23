import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Style/coloursExtention.dart';
class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(data: NavigationBarThemeData(
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if(states.contains(WidgetState.selected)){
            return IconThemeData(color: themeColors?.primaryColour);
          }
           return IconThemeData(color: themeColors?.textGrey);
        },),
        labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
          if(states.contains(WidgetState.selected)){
            return TextStyle(
              color: themeColors?.primaryColour ,
              fontSize: 11 ,
              fontWeight: FontWeight.bold
            );
          }
          return TextStyle(
              color: themeColors?.textGrey ,
              fontSize: 10 ,
          );

        })
      ),
          child: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor:themeColors?.primaryLightGreen,
        height: 63.h,

        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (i) => navigationShell.goBranch(
          i,
          initialLocation: i == navigationShell.currentIndex,
        ),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home' ),
          NavigationDestination(icon: Icon(Icons.group), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Profile'),
        ],
      )),
    );
  }
}