import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Style/AppColours.dart';
import '../../../../Core/Style/coloursExtention.dart';
import '../../../../generated/assets.dart';
import '../Cubit/home_cubit.dart';

class UpcomingSessionsWidget extends StatelessWidget {
  const UpcomingSessionsWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();
    return BlocBuilder(
        buildWhen: (previous, current) => current != previous,
        builder: (context, state) {
          if (state is UpcomingSessionsLoad) {
            return CircularProgressIndicator(
              color: AppColors.primaryLightColour,);
          }
          if (state is UpcomingSessionsEmpty) {

          }
          if (state is UpcomingSessionsFirstTime) {
            return FirstTimeUpcomingSessions(themeColors);
          }
          if (state is UpcomingSessionsLoaded) {
            return UpcomingSesssionsFound(themeColors);
          }
          return SizedBox();
        });
  }

  Padding UpcomingSesssionsFound(TutorDeskColours? themeColors) {
    return Padding(
            padding: EdgeInsets.all(16),

            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 8.h,),
              shrinkWrap: true,
              // Allows the ListView to calculate its height based on children
              physics: const NeverScrollableScrollPhysics(),
              // Disables scrolling for ListView so SingleChildScrollView handles it
              itemCount: 5,
              // Make sure to set an itemCount
              itemBuilder: (context, index) {
                return SessionCard(className: '3bod',
                    subject: 'Math',
                    subTitle: '10:pm',
                    themeColor: themeColors!);
              },
            ),
          );
  }

  Container FirstTimeUpcomingSessions(TutorDeskColours? themeColors) {
    return Container(
      width: 385.w,
      height: 312.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        // Figma corner radius: 16
        border: Border.all(
          color: Colors.black.withOpacity(0.08),
          // Figma stroke: #000000 8%
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
            color: Colors.black.withOpacity(0.10),
            // Figma color: #000000 10%
            offset: const Offset(0, 1),
            blurRadius: 2.r,
            spreadRadius: -1
                .r, // Spread -1 supported directly in BoxShadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 72.w,
              height: 72.h,
              decoration: BoxDecoration(
                color: Color(0xFFE4F2F2),
                borderRadius: BorderRadius.circular(36.r),
              ),
              child: Center(
                child: Icon(Icons.school_outlined,
                  color: themeColors?.primaryColour,size: 40,),
              ),
            ),
            SizedBox(height: 16.h,),
            Text("Set up your first class",style: TextStyle(color: themeColors?.primaryBlack, fontSize:16.sp,fontWeight:FontWeight.w600)),
            Text(
              "Add students and create a group to start scheduling sessions.", textAlign: TextAlign.center,style: TextStyle(color: themeColors?.textGrey, fontSize:14.sp,fontWeight:FontWeight.w300 ,),),
            SizedBox(height: 16.h,),

            MaterialButton(onPressed: () {},
              minWidth: double.infinity,
              color: themeColors?.primaryColour,
              height: 40.h,

              child: Text("Add your first student", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),),
            SizedBox(height: 16.h,),

            MaterialButton(onPressed: () {},
              color: Colors.white,
              minWidth: double.infinity,
              height: 40.h,

              child: Text("Create a group"),
              elevation: 3,
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                      color: themeColors!.primaryBlack.withOpacity(0.08),
                      width: 2
                  )

              ),),

          ],
        ),
      ),
    );
  }

  Container SessionCard(
      {required String className, required String subject, required String subTitle, required TutorDeskColours themeColor }) {
    return Container(
      height: 66.28.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
                Text(subject, style: TextStyle(fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: themeColor!.primaryBlack),),
                Text(subTitle, style: TextStyle(
                    fontSize: 12.sp, color: themeColor.textGrey),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
