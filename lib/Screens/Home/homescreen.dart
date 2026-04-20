import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/Calls/callscreen.dart';
import 'package:whatsapp_clone/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_clone/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp_clone/Screens/Home/Status/statusscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS")
          ],
          indicatorColor: Colors.white,
          ),
          toolbarHeight: 50,
          title: UiHelper.CustomText(text: "WhatsApp", height: 20,color: Colors.white,fontweight: FontWeight.bold),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white)),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white))
          ],
        ),
        body: TabBarView(children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallScreen()

        ]),
      ),
    );
  }
}
