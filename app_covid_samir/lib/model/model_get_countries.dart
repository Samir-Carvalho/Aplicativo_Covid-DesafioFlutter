import 'package:flutter/material.dart';

class ModelCountrie {
  int updated;
  String country;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  int tests;
  int testsPerOneMillion;
  int population;
  String continent;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;

  ModelCountrie(
      {@required this.updated,
      @required this.country,
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
      @required this.oneCasePerPeople,
      @required this.oneDeathPerPeople,
      @required this.oneTestPerPeople,
      @required this.activePerOneMillion,
      @required this.recoveredPerOneMillion,
      @required this.criticalPerOneMillion});

  Map<String, dynamic> toMap() {
    return {
      'updated': this.updated,
      'country': this.country,
      'cases': this.cases,
      'todayCases': this.todayCases,
      'deaths': this.deaths,
      'todayDeaths': this.todayDeaths,
      'recovered': this.recovered,
      'todayRecovered': this.todayRecovered,
      'active': this.active,
      'critical': this.critical,
      'casesPerOneMillion': this.casesPerOneMillion,
      'deathsPerOneMillion': this.deathsPerOneMillion,
      'tests': this.tests,
      'testsPerOneMillion': this.testsPerOneMillion,
      'population': this.population,
      'continent': this.continent,
      'oneCasePerPeople': this.oneCasePerPeople,
      'oneDeathPerPeople': this.oneDeathPerPeople,
      'oneTestPerPeople': this.oneTestPerPeople,
      'activePerOneMillion': this.activePerOneMillion,
      'recoveredPerOneMillion': this.recoveredPerOneMillion,
      'criticalPerOneMillion': this.criticalPerOneMillion,
    };
  }

  factory ModelCountrie.fromMap(Map<String, dynamic> map) {
    return ModelCountrie(
      updated: map['updated'],
      country: map['country'],
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
      oneCasePerPeople: map['oneCasePerPeople'],
      oneDeathPerPeople: map['oneDeathPerPeople'],
      oneTestPerPeople: map['oneTestPerPeople'],
      activePerOneMillion: map['activePerOneMillion'],
      recoveredPerOneMillion: map['recoveredPerOneMillion'],
      criticalPerOneMillion: map['criticalPerOneMillion'],
    );
  }
}
