import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';

class OTPScreen extends StatelessWidget{
  String phoneNumber;
  OTPScreen({required this.phoneNumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          UiHelper.CustomText(text: "Verifying your number", height: 20),
          SizedBox(height: 10),
          UiHelper.CustomText(text: "You’ve tried to register", height: 16),
          UiHelper.CustomText(text: "''$phoneNumber''", height: 16, color: Color(0XFF00A884)),
          UiHelper.CustomText(text: "recently. Wait before requesting an sms or a call.", height: 16),
          Row(
            children: [
              UiHelper.CustomText(text: " with your code.", height: 16),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: UiHelper.CustomText(text: " Wrong number?", height: 18, color: Color(0XFF00A884)),
              )
            ],
          ),
          SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                UiHelper.CustomeContainer(otp1Controller),
                SizedBox(width: 10),
                UiHelper.CustomeContainer(otp2Controller),
                SizedBox(width: 10),
                UiHelper.CustomeContainer(otp3Controller),
                SizedBox(width: 10),
                UiHelper.CustomeContainer(otp4Controller),
                SizedBox(width: 10),
                UiHelper.CustomeContainer(otp5Controller),
                SizedBox(width: 10),
                UiHelper.CustomeContainer(otp6Controller),
              ],
            ),
          SizedBox(height: 30),
          UiHelper.CustomText(text: "Didn’t receive a code?", height: 16,color: Color(0XFF00A884)),

        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: (){

        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}
