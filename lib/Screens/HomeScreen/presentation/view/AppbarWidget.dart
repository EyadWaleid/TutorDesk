import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Style/AppColours.dart';
import '../../../../Core/Style/coloursExtention.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();
    return  Container(
      color:themeColors?.primaryColour,
      height: 200.45.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical:  10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateTime.now().toString(),
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w200,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            Text(
              "Good afternoon, Abdullah 👋",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeacherDetails(icon: Icons.person_2, data: '12', title: 'Students'),
                TeacherDetails(icon: Icons.calendar_today_outlined, data: '6', title: 'Sessions'),
                TeacherDetails(icon: Icons.menu_book_outlined, data: '4', title: 'Groups'),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Container TeacherDetails({required  IconData icon ,  required String data , required String title }) {
    return Container(width:  112.2.w, height: 84.45.h ,
      // padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      decoration: BoxDecoration(
        color:  AppColors.containerLightColour.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon , color: Colors.white.withOpacity(0.7,)),
          SizedBox(
            height: 5.h,
          ),
          Text(data ,style: TextStyle(color:  Colors.white , fontSize:  20 , fontWeight: FontWeight.bold),),
          Text(title , style: TextStyle(color: Colors.white.withOpacity(0.6)),)
        ],
      ),);
  }

}
