import 'package:app_covid_samir/model/model_get_countries.dart';
import 'package:dio/dio.dart';

class RequestCountries {
  getHttp() async {
    try {
      await Future.delayed(Duration(seconds: 3));

      //var response = await Dio().get('http://www.google.com');
      Response response =
          await Dio().get("https://disease.sh/v3/covid-19/countries/Brazil/");

      final toModel = response.data((e) => ModelCountrie.fromMap(e));
      print(toModel);
      return toModel;

      //print(response);

    } on DioError catch (e) {
      print(e);
      throw Exception('ERROR');
    } on Exception catch (ex) {
      print(ex);
      rethrow;
    }
  }
}
