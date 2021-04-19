import 'dart:async';
import 'dart:convert';

import 'package:app_covid_samir/model/model_get_countries.dart';
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
