import 'package:covid_project/models/data_covid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {
  List<DataCovid> dataProvinsi = [];

  Future<void> fetchData() async {
    String url = "https://data.covid19.go.id/public/api/prov.json";
    var response = await http.get(Uri.parse(url));
    print(response.statusCode);
  }
}
