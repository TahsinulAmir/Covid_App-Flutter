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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            dataCovid.fetchData();
          },
          child: Text("Fetch"),
        ),
      ),
    );
  }
}
