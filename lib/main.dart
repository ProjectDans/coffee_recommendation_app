import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'login_google.dart';
import 'detail_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/Homepage': (BuildContext context) => new HomePage(),
        '/Registerpage': (BuildContext context) => new RegisterPage(),
        '/Detailpage': (BuildContext context) => new DetailPage(),
      },
    );
  }
}
