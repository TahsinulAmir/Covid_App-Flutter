import 'package:covid_project/models/data_covid.dart';
import 'package:flutter/material.dart';

class DetailProvinsi extends StatelessWidget {
  DetailProvinsi({super.key, required this.provinsi});
  DataCovid provinsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(provinsi.key!),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text("Provinsi"),
          SizedBox(
            height: 5,
          ),
          Text(
            provinsi.key!,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        Text(
                          provinsi.jumlahKasus.toString(),
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Jumlah Kasus")
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        Text(
                          provinsi.jumlahSembuh.toString(),
                          style: TextStyle(fontSize: 25, color: Colors.green),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Jumlah Sembuh")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        Text(
                          provinsi.jumlahMeninggal.toString(),
                          style: TextStyle(fontSize: 25, color: Colors.orange),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Jumlah Meninggal")
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: [
                        Text(
                          provinsi.jumlahDirawat.toString(),
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Jumlah Dirawat")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
