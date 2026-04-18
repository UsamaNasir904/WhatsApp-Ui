import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrContent = [
      {
        "image": "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA5L3Jhd3BpeGVsX29mZmljZV8zMF9waG90b19vZl9tYW5faW5kaWFuX2FybXNfY3Jvc3NlZF9zZWxmLWNvbmZpZF8wMDgwMDBlNS00YjdiLTQ1N2UtYjA3Mi02NGMwOGIwMWQ2ZmEucG5n.png",
        "name": "Ali",
        "lastmsg": "Lorem Ipsum",
        "time": "05:45am",
        "msg": "5"
      },
      {
        "image": "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
        "name": "Noor",
        "lastmsg": "Lorem Ipsum",
        "time": "04:45am",
        "msg": "4"
      },
      {
        "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
        "name": "Ali",
        "lastmsg": "Lorem Ipsum",
        "time": "05:45am",
        "msg": "5"
      },
      {
        "image": "https://static.vecteezy.com/system/resources/thumbnails/024/344/088/small/businessman-isolated-illustration-ai-generative-free-png.png",
        "name": "Ali",
        "lastmsg": "Saif",
        "time": "04:05am",
        "msg": "1"
      },
      {
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrs5u_gyx0zoWgH-tUfnrrybW5eICi3vQpVA&s",
        "name": "Uzair",
        "lastmsg": "Lorem Ipsum",
        "time": "03:44pm",
        "msg": "8"
      },
      {
        "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
        "name": "Amna",
        "lastmsg": "Lorem Ipsum",
        "time": "01:10am",
        "msg": "4"
      },
      {
        "image": "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTA5L3Jhd3BpeGVsX29mZmljZV8zMF9waG90b19vZl9tYW5faW5kaWFuX2FybXNfY3Jvc3NlZF9zZWxmLWNvbmZpZF8wMDgwMDBlNS00YjdiLTQ1N2UtYjA3Mi02NGMwOGIwMWQ2ZmEucG5n.png",
        "name": "Ali",
        "lastmsg": "Lorem Ipsum",
        "time": "05:45am",
        "msg": "5"
      },
      {
        "image": "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww",
        "name": "Noor",
        "lastmsg": "Lorem Ipsum",
        "time": "04:45am",
        "msg": "4"
      },
      {
        "image": "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740&q=80",
        "name": "Ali",
        "lastmsg": "Lorem Ipsum",
        "time": "05:45am",
        "msg": "5"
      },
      {
        "image": "https://static.vecteezy.com/system/resources/thumbnails/024/344/088/small/businessman-isolated-illustration-ai-generative-free-png.png",
        "name": "Ali",
        "lastmsg": "Saif",
        "time": "04:05am",
        "msg": "1"
      },
      {
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrs5u_gyx0zoWgH-tUfnrrybW5eICi3vQpVA&s",
        "name": "Uzair",
        "lastmsg": "Lorem Ipsum",
        "time": "03:44pm",
        "msg": "8"
      },
      {
        "image": "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?semt=ais_hybrid&w=740&q=80",
        "name": "Amna",
        "lastmsg": "Lorem Ipsum",
        "time": "01:10am",
        "msg": "4"
      }
    ];

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0XFFD9D9D9),
                    backgroundImage: NetworkImage(arrContent[index]["image"].toString()),
                    // Image load error handle karne ke liye
                    onBackgroundImageError: (exception, stackTrace) {
                      print("Image failed to load: $exception");
                    },
                  ),
                  title: UiHelper.CustomText(
                      text: arrContent[index]["name"].toString(), height: 16, fontweight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: arrContent[index]["lastmsg"].toString(), height: 14, color: Color(0XFF889095)),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                          text: arrContent[index]["time"].toString(), height: 12, color: Color(0XFF036A01)),
                      SizedBox(height: 5),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0XFF036A01),
                        child: UiHelper.CustomText(
                            text: arrContent[index]["msg"].toString(), height: 12, color: Colors.white),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton:CircleAvatar(
        radius: 27,
        backgroundColor: Color(0XFF008665),
        child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
      )
    );
  }
}


//For Run in Terminal add this
//flutter run -d chrome --web-browser-flag "--disable-web-security"