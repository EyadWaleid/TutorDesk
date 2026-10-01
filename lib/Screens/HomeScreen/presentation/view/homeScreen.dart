import 'package:flutter/material.dart';
import 'package:tutordesk/Core/Style/AppColours.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/view/AppbarWidget.dart';

import '../../../../Core/Style/coloursExtention.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();
    return Scaffold(
      backgroundColor:  themeColors?.backgroundColour,
        body: Column(
        children: [
         AppBarWidget(),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Text("Quick Actions")
              ],
            ),
          )
        ],
      ),
    );
  }

}
