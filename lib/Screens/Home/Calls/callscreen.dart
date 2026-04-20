import 'package:flutter/material.dart';

import '../../../Widgets/uihelper.dart';

class CallScreen extends StatelessWidget{
  var callContents=[
    {
      "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ali",
      "calltime": "15 mins ago",
    },
    {
      "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Amna",
      "calltime": "20 mins ago",
    }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              UiHelper.CustomText(text: "Recent Calls", height: 16,fontweight: FontWeight.bold, color: Colors.black),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(callContents[index]["image"].toString()),
                ),
                title: UiHelper.CustomText(text: callContents[index]["name"].toString(), height: 16,fontweight: FontWeight.bold,color: Colors.black),
                subtitle: UiHelper.CustomText(text: callContents[index]["calltime"].toString(), height: 14),
                trailing: IconButton(onPressed: (){

                }, icon: Icon(Icons.call,color: Color(0XFF008069))),
              );
            },itemCount: callContents.length,),
          )
        ],
      )
    );
  }

}