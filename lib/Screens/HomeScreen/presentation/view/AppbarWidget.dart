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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              DateTime.now().toString(),
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w200,
                color: themeColors?.textGrey,
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
              children: [
                TeacherDetails(icon: Icons.person_2, data: '12', title: 'Students'),
                SizedBox(
                  width: 8.w,
                ),
                TeacherDetails(icon: Icons.calendar_today_outlined, data: '6', title: 'Sessions'),
                SizedBox(
                  width: 8.w,
                ),
                TeacherDetails(icon: Icons.menu_book_outlined, data: '4', title: 'Groups'),

              ],
            ),

          ],
        ),
      ),
    );
  }
  Container TeacherDetails({required  IconData icon ,  required String data , required String title }) {
    return Container(width: 84.45.w, height: 112.2.h,
      padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      color: AppColors.containerLightColour.withOpacity(0.15),
      child: Column(
        children: [
          Icon(icon , color: Colors.white.withOpacity(0.7,)),
          SizedBox(height: 4.h,),
          Text(data ,style: TextStyle(color:  Colors.white , fontSize:  20 , fontWeight: FontWeight.bold),),
          SizedBox(height: 4.h,),
          Text(title , style: TextStyle(color: Colors.white.withOpacity(0.6)),)

        ],
      ),);
  }

}
