import 'package:flutter/material.dart';
import 'package:tutordesk/Screens/GroupScreen/presentation/CreatGroupSheet.dart';

import '../../../Core/Style/coloursExtention.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Widgets/MainTextFormField.dart';
class GroupScreen extends StatelessWidget {

   GroupScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeColors?.backgroundColour,
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Groups",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                    Spacer(),
                    IconButton(onPressed:  () =>  showModalBottomSheet(context:context , builder: (context) => CreateGroupSheet(),
                      isScrollControlled: true, // allows a tall sheet
                      useSafeArea: true,        // stays clear of the status bar
                      showDragHandle: true,     // the small grey bar on top
                      backgroundColor: Colors.white,), icon: Icon(Icons.add))
                  ],
                ),
                MainTextFormFiled(themeColors: themeColors , hintText: "Search for groups", controller: searchController, ),
                SizedBox(height: 15.h,),
                ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                      bottom: 20.h,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GroupCard(themeColors) ,
                    separatorBuilder: (context, index) => SizedBox(height: 12.h,),
                    itemCount: 10)
      
      
      
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container GroupCard(TutorDeskColours? themeColors)  {
    return Container(
                height: 113.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12 ,horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44.w,
                            height: 44.h,
                            decoration: BoxDecoration(
                              color: themeColors?.primaryLightGreen,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Icon(Icons.group , color:themeColors?.primaryColour,),
                          ),
                          SizedBox(width: 12.w,),
                          Text("Hamza",style: TextStyle(fontSize:14.sp , fontWeight: FontWeight.bold),),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("150 EGP",style: TextStyle(fontSize: 16.sp , fontWeight: FontWeight.bold),),
                              Text("Per student",style: TextStyle(fontSize: 11.sp , fontWeight: FontWeight.bold, color: themeColors?.textGrey))
                            ],
                          ),


                        ],
                      ),
                      SizedBox(height: 15.h,),
                      Row(
                        children: [
                          Icon(Icons.group_outlined,color: themeColors?.textGrey,),
                          Text("3 students",style: TextStyle(fontSize: 12 , color:themeColors!.textGrey),),
                          SizedBox(width: 16,),
                          Icon(Icons.access_time_outlined,color:  themeColors?.textGrey,),
                          Text("18:00",style: TextStyle(fontSize:12 , color: themeColors!.textGrey),),
                         /* Icon(Icons.calendar_today_outlined),
                          Text("Tue . THU",style:  TextStyle(fontSize:12 , color: themeColors!.textGrey),)*/
                          Spacer(),
                          SizedBox(
                            width: 92.w,
                            height: 30.h,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) => SizedBox(width: 10.w),
                              itemBuilder:(context, index) =>  Container(
                                    width: 41.w,
                                    height: 22.h,
                                    decoration:  BoxDecoration(
                                        color: themeColors?.primaryOffWhite,
                                        borderRadius: BorderRadius.circular(8)

                                    ),

                                    child:Center(child: Text("Mon",style: TextStyle(fontSize: 11.sp , color: themeColors.textGrey ),)) ,


                                  ),
                              itemCount: 2,
                            ),
                          )






                        ],
                      )

                    ],
                  ),
                ),
                );
  }
}

