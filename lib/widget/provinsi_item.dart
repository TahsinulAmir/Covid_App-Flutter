import 'package:covid_project/models/data_covid.dart';
import 'package:covid_project/screen/detail_provinsi.dart';
import 'package:flutter/material.dart';

class ProvinsiItem extends StatelessWidget {
  ProvinsiItem({super.key, required this.dataProvinsi});
  DataCovid dataProvinsi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailProvinsi(),
            ));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataProvinsi.key!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Jumlah Kasus"),
            SizedBox(
              height: 5,
            ),
            Text(
              dataProvinsi.jumlahKasus.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
