import 'package:flutter/material.dart';
import 'package:tutordesk/Core/Widgets/MainTextFormField.dart';

import '../../../Core/Style/coloursExtention.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CreateGroupSheet extends StatelessWidget {
  const CreateGroupSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).extension<TutorDeskColours>();
    return
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Create Group",style: TextStyle(fontSize: 16.sp , color: themeColor?.primaryBlack , fontWeight: FontWeight.bold ),),
                Spacer(),
                Icon(Icons.close , size: 16, color: themeColor?.textGrey,),
              ],
            ),
          ),
          SizedBox(height: 8.h,),
          SizedBox(
              width: double.infinity,
              child: Divider(color: themeColor?.primaryBlack.withOpacity(0.2), height: 0.5.h,)),
  Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Group Name" , style: TextStyle(fontSize: 14.sp , fontWeight: FontWeight.w600 , color: themeColor?.primaryBlack),),
        SizedBox(height: 6.h,),
        MainTextFormFiled(themeColors: themeColor, hintText: "Enter group name"),
        SizedBox(height: 12.h,),
        Text("Group / Level" , style: TextStyle(fontSize: 14.sp , fontWeight: FontWeight.w600 , color: themeColor?.primaryBlack),),
        SizedBox(height: 6.h,),
        MainTextFormFiled(themeColors: themeColor, hintText: "Enter group level"),
        SizedBox(height: 12.h,),
        Text("Price per Student" , style: TextStyle(fontSize: 14.sp , fontWeight: FontWeight.w600 , color: themeColor?.primaryBlack),),
        SizedBox(height: 6.h,),
        MainTextFormFiled(themeColors: themeColor, hintText: "# 400"),
        SizedBox(height: 12.h,),
        Text("Whatsapp group link " , style: TextStyle(fontSize: 14.sp , fontWeight: FontWeight.w600 , color: themeColor?.primaryBlack),),
        SizedBox(height: 6.h,),
        MainTextFormFiled(themeColors: themeColor, hintText: "Enter whatsapp group link"),
        SizedBox(height: 12.h,),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: MaterialButton(
                  height: 42.5.h ,
                  onPressed: () {}  , color: themeColor?.primaryColour,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),


                  ),
                  child: Text("Save",style: TextStyle(fontSize: 14.sp , color: Colors.white),),),
              ),
              SizedBox(width: 12.w,),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: () {} ,
                  height: 42.5.h,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      side: BorderSide(color: themeColor!.primaryBlack.withOpacity(0.2))

                  ), color: Colors.white,
                  child: Text("Cancel",style: TextStyle(fontSize: 14.sp , color: themeColor?.primaryBlack),),),
              )
            ],
          ),
        )
      ],
    ),
  )

        ],
      );


  }
}
