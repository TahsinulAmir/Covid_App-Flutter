import 'package:flutter/material.dart';

class ProvinsiScreen extends StatelessWidget {
  const ProvinsiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid App"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: Text("Fetch")),
      ),
    );
  }
}
