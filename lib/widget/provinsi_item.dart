import 'package:covid_project/models/data_covid.dart';
import 'package:flutter/material.dart';

class ProvinsiItem extends StatelessWidget {
  ProvinsiItem({super.key, required this.dataProvinsi});
  DataCovid dataProvinsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(dataProvinsi.key!),
    );
  }
}
