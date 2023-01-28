import 'package:covid_project/providers/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvinsiScreen extends StatelessWidget {
  const ProvinsiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Data dataCovid = Provider.of<Data>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Covid App"),
        ),
        body: FutureBuilder(
          future: dataCovid.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: dataCovid.dataProvinsi.length,
                itemBuilder: (context, index) {
                  final data = dataCovid.dataProvinsi[index];
                  return ListTile(
                    title: Text(data.key!),
                    subtitle: Text(data.jumlahKasus.toString()),
                  );
                },
              );
            }
            ;
          },
        ));
  }
}
