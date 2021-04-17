import 'package:app_covid_samir/model/model_api.dart';
import 'package:dio/dio.dart';

class RequestCountries {
  Future<List<ToModel>> getHttp() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      Response response =
          await Dio().get("https://disease.sh/v3/covid-19/countries/");

      final list =
          (response.data as List).map((e) => ToModel.fromMap(e)).toList();
      return list;
    } on DioError catch (e) {
      print(e);
      throw Exception('ERROR');
    } on Exception catch (ex) {
      print(ex);
      rethrow;
    }
  }
}
