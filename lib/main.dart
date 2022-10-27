import 'package:flutter/material.dart';
import 'package:flutter_application_5/second_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id :(context)=>const HomePage(),
        SecondPage.id :(context) =>  const SecondPage(),
        
      },
    );
  }
}

