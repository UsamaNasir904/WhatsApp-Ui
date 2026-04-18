import 'package:flutter/material.dart';
import '../../Widgets/uihelper.dart';
import '../OTP/otpscreen.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectcontury = "Pakistan";
TextEditingController phoneController = TextEditingController();

  List<String> countries = [
    "India", "America", "Africa", "Italy", "Pakistan", "Germany"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Center(
            child: Text(
              "Enter your phone number",
              style: TextStyle(fontSize: 20, color: Color(0XFF00A884), fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Text("WhatsApp will need to verify your phone", style: TextStyle(fontSize: 16)),
          Text("number. Carrier charges may apply.", style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          Text(" What’s my number?", style: TextStyle(fontSize: 16, color: Color(0XFF00A884))),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectcontury = value.toString();
                });
              },
              value: selectcontury,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+92",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    )
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(//login Screen Button
        callback: (
            ){
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  login(String phonenumber){
    if(phonenumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your phone number"),backgroundColor: Color(0XFF00A884),));
    }else{
      Navigator.push(context,MaterialPageRoute(builder: (context) => OTPScreen(phoneNumber: phonenumber)));
    }
  }
}