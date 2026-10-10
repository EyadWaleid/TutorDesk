import 'package:flutter/material.dart';
import 'package:tutordesk/Core/Style/AppColours.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/Cubit/home_cubit.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/view/AppbarWidget.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/view/QuickActionFeatures.dart';
import '../../../../Core/Style/coloursExtention.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'UpcomingSessionsWiget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();
    return Scaffold(
      backgroundColor: themeColors?.backgroundColour,
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if(state is TeacherWorkDataLoading){
            return CircularProgressIndicator(color:AppColors.primaryLightColour,);
          }
          if(state is TeacherWorkDataLoaded){
            return SingleChildScrollView(

              child: Column(
                children: [
                  AppBarWidget(),
                  QuickActionFeatures(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          "Upcoming Sessions",
                          style: TextStyle(
                            color: themeColors!.primaryBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),

                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: themeColors.primaryColour,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  UpcominSessionsWidget()
                ],
              ),
            );
          }
          return SizedBox();

        },
      ),
    );
  }
}

