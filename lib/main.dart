import 'package:bankingtest/views/widgets/landing_page.dart';
import 'package:bankingtest/views/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:bankingtest/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Banking Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'DMSans',
        primaryColor: Styles.primaryColor,
        backgroundColor: Styles.primaryColor,
      ),
      home: const TopNav(),
      routes: <String, WidgetBuilder>{
        '/views/widgets/landing_page': (BuildContext context) =>
            const LandingPage(),
      },
      //home: const FormLogin(),
    );
  }
}
