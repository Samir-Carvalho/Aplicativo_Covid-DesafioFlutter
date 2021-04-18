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
  final int userId;
  final int id;
  final String title;
  final String body;
  final CountryInfo countryInfo;

  Post({this.userId, this.id, this.title, this.body, this.countryInfo});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['cases'],
        id: json['updated'],
        title: json['country'],
        body: json['continent'],
        countryInfo: json['countryInfo'] != null
            ? new CountryInfo.fromJson(json['countryInfo'])
            : null);
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
    //MyApp(post: fetchPost());
    //final String country = ModalRoute.of(context).settings.arguments ?? '';
    //String country = 'Brazil';
    print(country);
    return Scaffold(
      //appBar: AppBar(
      // title: Text(country,style: TextStyle(fontFamily: 'Ubuntu-Bold',fontSize: 16,
      //   ))
      //  ),
      body: MyApp(post: fetchPost(country)),
    );
  }
}

class MyApp extends StatelessWidget {
  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print('entrou no bild my app');

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
                              //color: Colors.white70,
                              child: new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                //Padding between these please
                                // new Text("I love Flutter",
                                //   style: new TextStyle(
                                //     fontSize: 20.0,
                                //   fontWeight: FontWeight.bold)),

                                new Image.network(
                                    snapshot.data.countryInfo.flag,
                                    fit: BoxFit.cover),
                                Container(
                                  height: 25,
                                ),
                                new Text(
                                  snapshot.data.title.toString(),
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
                                  'T123123',
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
                                      '26' + '%',
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
                                      '26%',
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
                                      '23%',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.red,
                                        fontFamily: 'Ubuntu-Bold',
                                      ),
                                    ),
                                  ],
                                ))),

                                //'\n\ntitle : ' +
                                //snapshot.data.title +
                                //'\n\nbody : ' +
                                //snapshot.data.body),
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

/*
Container(
        margin: new EdgeInsets.symmetric(vertical: 16.0),
        alignment: FractionalOffset.centerLeft,
        child: new Container(
          height: 50,
          width: 50,
          child: Image.network(snapshot.data.caminhoFoto, fit: BoxFit.cover),
        ));
*/
