import 'package:app_covid_samir/model/model_get_countries.dart';
import 'package:app_covid_samir/request_api/get_request_api_countries.dart';
import 'package:app_covid_samir/widgets/widget_list_countries.dart';
import 'package:flutter/material.dart';

class CountriesRequest extends StatelessWidget {
  final _request = RequestCountries();

  @override
  Widget build(BuildContext context) {
    print('entrou no countries request');
    return Scaffold(
      appBar: AppBar(
          //leading: Image.asset('assets/logo/MaskGroup216.png'),
          title: Center(
        child: Text(
          'Covid-19',
        ),
      )),
      body: FutureBuilder<ModelCountrie>(
        // future: _request, //.getHttp(),
        builder: (_, snapshot) {
          //return snapshot.hasData
          //? ListView.builder(
          //  itemCount: snapshot.data.length,
          // itemBuilder: (_, idx) {
          print('entrou antes do return widgetListCountries ');
          return WidgetListCountries(model: snapshot.data);
        },
      ),
    );
  }
}
