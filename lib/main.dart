import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:talk/screens/draw.dart';
import 'package:talk/screens/home.dart';
import 'package:talk/screens/speechToText.dart';

void main() {
  runApp(MaterialApp(
    title: 'HealthQuest',
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/home':
          return MaterialPageRoute(builder: (context) => SpeechScreen());
        case '/speectToText':
          return MaterialPageRoute(builder: (context) => SpeechScreen());
        case '/draw':
          return MaterialPageRoute(builder: (context) => DrawScreen());
      }
    },
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),

        decoration: BoxDecoration(color: Color(0xffFBFFE2)),
        // child: Image.asset('assets/images/logo.png'),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/logo.png"),
            ),
            Image(
              image: AssetImage("assets/speechText.png"),
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
