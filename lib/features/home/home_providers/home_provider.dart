import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:weather_app_assignment/core/core.dart';
import 'package:weather_app_assignment/model/model.dart';

class HomeProvider extends ChangeNotifier{
  late BuildContext context;
  WeatherModel commonResponse = WeatherModel();

  var weatherDetails;


  Future loadWeatherList(BuildContext context) async {
    try {
      var connectivity = await (Connectivity().checkConnectivity());

      if (connectivity == ConnectivityResult.none) {

      } else {
        http.Response response = await http.get(
            Uri.parse(
                ApiService.baseUrl),
            headers: {}
        );
        if (response.statusCode == 200) {
          commonResponse = WeatherModel.fromJson(jsonDecode(response.body));



          print(response.body);

          notifyListeners();
        } else {

        }
      }
    } catch (e) {
      log(e.toString());
    }
  }


}

class WeatherItem {
  final DateTime date;
  final double temperature;
  final String condition;
  final String iconCode;

  WeatherItem({required this.date, required this.temperature, required this.condition, required this.iconCode});
}