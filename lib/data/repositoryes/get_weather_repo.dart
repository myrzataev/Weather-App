import 'package:dio/dio.dart';
import 'package:home_work3/core/consts/app_consts.dart';
import 'package:home_work3/core/network/dio_settings.dart';
import 'package:home_work3/data/models/weathermodel.dart';

class GetWeatherRepo{
  static Future<WeatherModel> getWeather() async {
    final Dio dio = DioSettings().dio;
    final Response response = await dio.get('forecast?',
    queryParameters: {
      'q': "Bishkek",
      "units": "metric",
      'appid': AppConsts.apiKey
    }
    );
    return WeatherModel.fromJson(response.data);
  }
}