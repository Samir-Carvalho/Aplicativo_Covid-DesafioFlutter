import 'package:app_covid_samir/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppCovidSC());
}

class AppCovidSC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFfffffff), //#FBFBFD 0xff000000
          textTheme: TextTheme(
              // bodyText1: TextStyle(color: Colors.black, fontFamily: 'Ubuntu'),
              // bodyText2: TextStyle(color: Colors.black, fontFamily: 'Ubuntu'),
              )),
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => HomePage(),
        // '/countries_datails': (context) => CountriesDetailsPage(),
        //'/page_navegacao3': (context) => PageNavegacao3(),
      },
    );

    /*return MaterialApp(     
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
    return Center(
      child: Icon(
        Icons.image_aspect_ratio,
        size: 64.0,
        color: Theme.of(context).primaryColor,
        // home: HomePage(),
      ),
    );
*/
  }
}
