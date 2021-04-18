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

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['cases'],
      id: json['updated'],
      title: json['country'],
      body: json['continent'],
    );
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
      appBar: AppBar(
          title: Text(country,
              style: TextStyle(
                fontFamily: 'Ubuntu-Bold',
                fontSize: 16,
              ))),
      body: MyApp(post: fetchPost(country)),
    );
  }
}

class MyApp extends StatelessWidget {
  final Future<Post> post;

  MyApp({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('entrou no bild my app');
    return Scaffold(
      body: Center(
        child: FutureBuilder<Post>(
          future: post,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print('if s');
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Id :' +
                    snapshot.data.id.toString() +
                    '\n\ntitle : ' +
                    snapshot.data.title +
                    '\n\nbody : ' +
                    snapshot.data.body),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
