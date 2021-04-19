import 'dart:async';
import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/model/model_get_countries.dart';
import 'package:app_covid_samir/request_api/get_request_api_countries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0XFFECEFF1),
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Card(
                              child: new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Image.network(
                                    snapshot.data.countryInfo.flag,
                                    fit: BoxFit.cover),
                                Container(
                                  height: 25,
                                ),
                                new Text(
                                  snapshot.data.country.toString(),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Ubuntu-Bold',
                                  ),
                                ),
                                Container(
                                  height: 48,
                                ),
                                new Text(
                                  'Total de casos',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Ubuntu-Medium',
                                  ),
                                ),
                                new Text(
                                  snapshot.data.cases.toString(),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Ubuntu-Regular',
                                  ),
                                ),
                                Container(
                                    height: 100,
                                    //color: Colors.blue,
                                    child: Center(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Ativos',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Ubuntu-Regular',
                                          ),
                                        ),
                                        Container(
                                          width: 37,
                                        ),
                                        Text(
                                          'Curados ',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Ubuntu-Regular',
                                          ),
                                        ),
                                        Container(
                                          width: 37,
                                        ),
                                        Text(
                                          'Óbito',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Ubuntu-Regular',
                                          ),
                                        ),
                                      ],
                                    ))),
                                Container(
                                    //color: Colors.blue,
                                    child: Center(
                                        child: Row(
                                  children: [
                                    Text(
                                      snapshot.data
                                              .percentageActive()
                                              .toStringAsFixed(2) +
                                          '%',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.blue,
                                        fontFamily: 'Ubuntu-Bold',
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                    ),
                                    Text(
                                      snapshot.data
                                              .percentagerecovered()
                                              .toStringAsFixed(2) +
                                          '%',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.green,
                                        fontFamily: 'Ubuntu-Bold',
                                      ),
                                    ),
                                    Container(
                                      width: 37,
                                    ),
                                    Text(
                                      snapshot.data
                                              .percentagedeaths()
                                              .toStringAsFixed(2) +
                                          '%',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.red,
                                        fontFamily: 'Ubuntu-Bold',
                                      ),
                                    ),
                                  ],
                                ))),
                              ],
                            ),
                          )),
                        ]));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
