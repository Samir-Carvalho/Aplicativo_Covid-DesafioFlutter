import 'package:app_covid_samir/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppCovidSC());
}

class AppCovidSC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFfffffff), textTheme: TextTheme()),
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
