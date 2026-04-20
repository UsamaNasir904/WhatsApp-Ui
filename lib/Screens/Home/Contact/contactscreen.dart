import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class ContactScreen extends  StatelessWidget{
  var contactContent=[
    {
      "image":"https://toppng.com/uploads/preview/happy-black-person-11531493747ib42obkabb.png",
      "name":"Ali",
      "status":"Busy"
    },
    {
      "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ali Hassan",
      "status": "Available"
    },
    {
      "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Amna",
      "status": "Busy"
    },
    {
      "image":"https://toppng.com/uploads/preview/happy-black-person-11531493747ib42obkabb.png",
      "name":"Ali",
      "status":"Busy"
    },
    {
      "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ali Hassan",
      "status": "Available"
    },
    {
      "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Amna",
      "status": "Busy"
    },
    {
      "image":"https://toppng.com/uploads/preview/happy-black-person-11531493747ib42obkabb.png",
      "name":"Ali",
      "status":"Busy"
    },
    {
      "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Ali Hassan",
      "status": "Available"
    },
    {
      "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
      "name": "Amna",
      "status": "Busy"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(text: "SelectCotact", height:16,color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
        ],

      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(contactContent[index]["image"].toString()),
          ),
          title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 14,fontweight: FontWeight.bold),
          subtitle: UiHelper.CustomText(text: contactContent[index]["status"].toString(), height: 14,)
        );
      },
        itemCount: contactContent.length,
      ),
    );
  }

}