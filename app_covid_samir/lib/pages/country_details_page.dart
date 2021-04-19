import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/request_api/get_request_api_countries.dart';
import 'package:app_covid_samir/widgets/countries_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
