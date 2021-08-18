import 'package:dio/dio.dart';

Future<Map> getData() async {
  var response = await Dio()
      .get("https://api.hgbrasil.com/weather?key=95d04dd6&woeid=456596");

  return response.data;
}
