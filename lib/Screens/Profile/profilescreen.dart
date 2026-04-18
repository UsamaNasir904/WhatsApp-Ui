import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart'; // Ensure this path is correct
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            UiHelper.CustomText(
                text: "Profile info ",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(height: 20),
            UiHelper.CustomText(
                text: "Please provide your name and an optional", height: 14),
            UiHelper.CustomText(text: "profile photo", height: 14),
            SizedBox(height: 20),

            // Image Picker Section
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child:pickedimage==null? CircleAvatar(
                radius: 80,
                backgroundColor: Color(0XFFD9D9D9),
                // Logic to show picked image or default icon
                child:Image.asset(
                  "assets/images/photo-camera 1.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ):CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Type your name",
                        hintStyle: TextStyle(
                          color: Color(0XFF5E5E5E),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82)),
                        ),
                      )),
                ),
                Image.asset("assets/images/happy-face 1.png"),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          // Add your navigation or save logic here
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Bottom Sheet for Camera/Gallery
  void _openBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                    ),
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.gallery);
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.image, size: 80, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }

  // Image Picking Logic
  Future<void> _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedimage = tempImage;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    }
  }
}