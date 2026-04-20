import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget{
  var statusContents=[
    {
    "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
    "name": "Ali",
    "statustime": "15 mins ago",
     },
    {
      "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Amna",
      "statustime": "20 mins ago",
    }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              UiHelper.CustomText(text: "Status", height: 20,fontweight: FontWeight.bold, color: Colors.black)
            ],
            ),
          SizedBox(height: 10,),
          ListTile(
            leading: Padding(padding: const EdgeInsets.only(left: 5),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://st3.depositphotos.com/9998432/13335/v/450/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0XFF008069),
                    child: Center(child: Icon(Icons.add,color: Colors.white,size: 15,)),
                  ),
                )
              ],
            ),
            ),
            title: UiHelper.CustomText(text: "My Status", height: 16,fontweight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: "Tap to add status update", height: 14),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent updates", height:15),
                Icon(Icons.arrow_drop_down,color: Color(0XFF5E5E5E))
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(statusContents[index]["image"].toString()),
                ),
                title: UiHelper.CustomText(text: statusContents[index]["name"].toString(), height: 16,fontweight: FontWeight.bold),
                subtitle: UiHelper.CustomText(text: statusContents[index]["statustime"].toString(), height: 14),
              );
            },itemCount: statusContents.length,),
          )
        ],
      ),
    );
  }

}