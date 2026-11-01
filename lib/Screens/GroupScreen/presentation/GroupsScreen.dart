import 'package:flutter/material.dart';

import '../../../Core/Style/coloursExtention.dart';

class GroupScreen extends StatelessWidget {

  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<TutorDeskColours>();
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text("Groups",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add))
                ],
              ),
              TextFormField(),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => GroupCard(themeColors) ,
                  separatorBuilder: (context, index) => SizedBox(height: 12,),
                  itemCount: 10)



            ],
          ),
        ),
      ),
    );
  }

  Container GroupCard(TutorDeskColours? themeColors) {
    return Container(
                height: 134.5,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Hamza",style: TextStyle(fontSize:14 , fontWeight: FontWeight.bold ),),
                       Column(
                         children: [
                           Text("150 EGP",style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                           Text("Per student",style: TextStyle(fontSize: 11 , fontWeight: FontWeight.bold))
                         ],
                       )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.person_2_outlined),
                          Text("3 students",style: TextStyle(fontSize: 12 , color:themeColors!.textGrey),),
                          SizedBox(width: 16,),
                          Icon(Icons.timer_outlined),
                          Text("18:00",style: TextStyle(fontSize:12 , color: themeColors!.textGrey),),
                          SizedBox(width: 16,),
                          Icon(Icons.calendar_today_outlined),
                          Text("Tue . THU",style:  TextStyle(fontSize:12 , color: themeColors!.textGrey),)

                        ],
                      )

                    ],
                  ),
                ),
                );
  }
}
