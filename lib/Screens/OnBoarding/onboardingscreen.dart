import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';
import '../Login/loginscreen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image 1.png', height: 200, width: 200),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: 'Welcome to My WhatsApp',
              height: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out ", height: 14),
                UiHelper.CustomText(
                  text: "Privacy Policy. ",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                UiHelper.CustomText(text: "Tap ", height: 14),
                UiHelper.CustomText(text: "''Agree and continue''", height: 14),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept ", height: 14),
                UiHelper.CustomText(
                  text: "the Teams of Service.",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
            //SizedBox(height: 50),
            //UiHelper.CustomButton(callback: (){}, buttonname: 'Agree and continue'),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
