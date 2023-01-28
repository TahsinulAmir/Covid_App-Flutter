import 'package:covid_project/models/data_covid.dart';
import 'package:flutter/material.dart';

class DetailProvinsi extends StatelessWidget {
  DetailProvinsi({super.key, required this.provinsi});
  DataCovid provinsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(provinsi.key!),
      ),
    );
  }
}
