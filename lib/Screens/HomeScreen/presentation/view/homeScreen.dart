import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/view/AppbarWidget.dart';
import '../../../../Core/Style/coloursExtention.dart';
import '../../../../generated/assets.dart';

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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 156.h,
              padding: EdgeInsets.all(16.r), // Added padding matching Figma spec
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r), // Figma corner radius: 16
                border: Border.all(
                  color: Colors.black.withOpacity(0.08), // Figma stroke: #000000 8%
                  width: 1.14,
                ),
                boxShadow: [
                  // Drop Shadow 1
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 1),
                    blurRadius: 3.r,
                    spreadRadius: 0,
                  ),
                  // Drop Shadow 2
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10), // Figma color: #000000 10%
                    offset: const Offset(0, 1),
                    blurRadius: 2.r,
                    spreadRadius: -1.r, // Spread -1 supported directly in BoxShadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Quick Actions",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: themeColors?.primaryBlack,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QucikActionsFeatures(
                        iconFeature: Icon(Icons.check_box_outlined,color: Color(0xFF9810FA),),
                        themeColors: themeColors,
                        iconBackgroundColour: const Color(0xFFFAF5FF),
                        featureName: 'Attendance',
                      ),
                      QucikActionsFeatures(
                        iconFeature: Assets.core.assets.images.walletIcon.svg(
                          width: 24.w,
                          height: 24.h,
                          color: const Color(0xFFE17100),
                        ),
                        iconBackgroundColour: const Color(0xFFFFFBEB),
                        featureName: "RecordFee", themeColors: themeColors,
                      ),
                      QucikActionsFeatures(
                        iconFeature:Assets.core.assets.images.examScore.svg(
                          width: 24.w,
                          height: 24.h,
                          color: Color(0xFF9810FA),
                        ),
                        themeColors: themeColors,
                        iconBackgroundColour: const Color(0xFFFAF5FF),
                        featureName: "ExamScore",
                      ),
                      QucikActionsFeatures(
                        iconFeature: Icon(Icons.phone,color: themeColors!.primaryColour,),
                        themeColors: themeColors,
                        iconBackgroundColour: const Color(0xFFF0FDFA),
                        featureName: 'WhatsApp',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )          ],
              ),
    );
  }

  Column QucikActionsFeatures({required Widget iconFeature,required TutorDeskColours? themeColors ,required Color iconBackgroundColour ,required String featureName}) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40.w ,
          height: 40.h ,
          decoration: BoxDecoration(
              color:iconBackgroundColour,
              border: Border.all(style: BorderStyle.none) ,
              borderRadius: BorderRadius.circular(16.r)
          ),
          child:Center(
              child: iconFeature,
        )),
        SizedBox(height: 6.h,),
        Text(featureName , style: TextStyle(color: themeColors?.textGrey , fontSize: 11.sp ),),
      ],
    );
  }

}
