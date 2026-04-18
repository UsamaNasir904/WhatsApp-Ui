import 'package:flutter/material.dart';

import 'Screens/splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Whatsapp Series',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          colorScheme: .fromSeed(seedColor: Color(0XFF00A884)),
          useMaterial3: false,
          fontFamily: "Regular",
        ),
        home: SplashScreen()
    );
  }
}



