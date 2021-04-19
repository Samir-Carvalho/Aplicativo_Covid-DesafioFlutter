import 'dart:async';
import 'dart:convert';
import 'package:app_covid_samir/model/model_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost(String country) async {
  final url = Uri.parse('https://disease.sh/v3/covid-19/countries/' + country);
  http.Response response = await http.get(url);

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Falha ao carregar contry');
  }
}

class Post {
  final int cases;
  final double active;
  final double recovered;
  final double deaths;
  final double population;
  final String country;
  final String continent;
  final CountryInfo countryInfo;

  Post({
    this.cases,
    this.country,
    this.continent,
    this.countryInfo,
    this.active,
    this.recovered,
    this.deaths,
    this.population,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        cases: json['cases'],
        active: json['active'], //active
        recovered: json['recovered'],
        deaths: json['deaths'],
        population: json['population'],
        country: json['country'],
        continent: json['continent'],
        countryInfo: json['countryInfo'] != null
            ? new CountryInfo.fromJson(json['countryInfo'])
            : null);
  }

  double percentageActive() {
    double val = (this.active * 100) / this.cases;
    return val;
  }

  double percentagerecovered() {
    double val = (this.recovered * 100) / this.cases;
    return val;
  }

  double percentagedeaths() {
    double val = (this.deaths * 100) / this.cases;
    return val;
  }
}

class CountriesDetailsPage extends StatelessWidget {
  final ToModel tomodel;
  final String country;

  const CountriesDetailsPage(
      {Key key, @required this.tomodel, @required this.country})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(country);
    return Scaffold(
      body: MyApp(post: fetchPost(country)),
    );
  }
}

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
                    padding: new EdgeInsets.symmetric(
                      horizontal: 160.0,
                      vertical: 120.0,
                    ),
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

class CountryInfo {
  String flag;

  CountryInfo({this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = this.flag;
    return data;
  }
}
