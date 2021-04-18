import 'package:flutter/material.dart';

class ToModel {
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  double casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  String continent;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;
  List<dynamic> countries;

  ToModel(
      {@required this.updated,
      @required this.cases,
      @required this.todayCases,
      @required this.deaths,
      @required this.todayDeaths,
      @required this.recovered,
      @required this.todayRecovered,
      @required this.active,
      @required this.critical,
      @required this.casesPerOneMillion,
      @required this.deathsPerOneMillion,
      @required this.tests,
      @required this.testsPerOneMillion,
      @required this.population,
      @required this.continent,
      @required this.activePerOneMillion,
      @required this.recoveredPerOneMillion,
      @required this.criticalPerOneMillion,
      @required this.countries});

  Map<String, dynamic> toMap() {
    return {
      'updated': updated,
      'cases': cases,
      'todayCases': todayCases,
      'deaths': deaths,
      'todayDeaths': todayDeaths,
      'recovered': recovered,
      'todayRecovered': todayRecovered,
      'active': active,
      'critical': critical,
      'casesPerOneMillion': casesPerOneMillion,
      'deathsPerOneMillion': deathsPerOneMillion,
      'tests': tests,
      'testsPerOneMillion': testsPerOneMillion,
      'population': population,
      'continent': continent,
      'activePerOneMillion': activePerOneMillion,
      'recoveredPerOneMillion': recoveredPerOneMillion,
      'criticalPerOneMillion': criticalPerOneMillion,
      'countries': countries,
    };
  }

  factory ToModel.fromMap(Map<String, dynamic> map) {
    return ToModel(
      updated: map['updated'],
      cases: map['cases'],
      todayCases: map['todayCases'],
      deaths: map['deaths'],
      todayDeaths: map['todayDeaths'],
      recovered: map['recovered'],
      todayRecovered: map['todayRecovered'],
      active: map['active'],
      critical: map['critical'],
      casesPerOneMillion: map['casesPerOneMillion'],
      deathsPerOneMillion: map['deathsPerOneMillion'],
      tests: map['tests'],
      testsPerOneMillion: map['testsPerOneMillion'],
      population: map['population'],
      continent: map['continent'],
      activePerOneMillion: map['activePerOneMillion'],
      recoveredPerOneMillion: map['recoveredPerOneMillion'],
      criticalPerOneMillion: map['criticalPerOneMillion'],
      countries: map['countries'],
    );
  }

  int Population() {
    return this.countries.length;
  }

  //String toJson() => json.encode(toMap());

//  factory ToModel.fromJson(String source) =>
  //    ToModel.fromMap(json.decode(source));
}
