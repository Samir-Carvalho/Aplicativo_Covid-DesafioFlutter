class Post {
  final int cases;
  final int active;
  final int recovered;
  final int deaths;
  final int population;
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
    int ac = (this.active * 100);
    double val = ac / this.cases;
    return val;
  }

  double percentagerecovered() {
    int rec = this.recovered * 100;
    double val = rec / this.cases;
    return val;
  }

  double percentagedeaths() {
    int dead = this.deaths * 100;
    double val = dead / this.cases;
    return val;
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
