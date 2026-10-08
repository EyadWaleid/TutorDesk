import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Style/coloursExtention.dart';
import '../../../../generated/assets.dart';

class UpcominSessionsWidget extends StatelessWidget {
  const UpcominSessionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();

    return Padding(
      padding: EdgeInsets.all(16),

      child:ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 8.h,),
        shrinkWrap: true, // Allows the ListView to calculate its height based on children
        physics: const NeverScrollableScrollPhysics(), // Disables scrolling for ListView so SingleChildScrollView handles it
        itemCount: 5, // Make sure to set an itemCount
        itemBuilder: (context, index) {
          return SessionCard(className: '3bod', subject: 'Math', subTitle: '10:pm', themeColor: themeColors!);
        },
      ),
    );
  }

  Container SessionCard({required String className , required String subject , required  String subTitle , required TutorDeskColours themeColor }) {
    return Container(
          height: 66.28.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12 ,vertical: 10 ),
            child: Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE4F2F2),
                    border: Border.all(style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: Assets.core.assets.images.clockIcon.svg(
                      width: 16.w,
                      height: 16.h,
                    ),
                  ),
                ),
                SizedBox(width: 12,),
                Column(
                  children: [
                    Text(subject , style:  TextStyle(fontSize:14.sp, fontWeight: FontWeight.w500 , color: themeColor!.primaryBlack),),
                    Text(subTitle , style:  TextStyle( fontSize:12.sp, color:themeColor.textGrey ),)
                  ],
                )
              ],
            ),
          ),
        );
  }
}
