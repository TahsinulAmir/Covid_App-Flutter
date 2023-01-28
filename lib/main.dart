import 'package:covid_project/providers/data.dart';
import 'package:covid_project/screen/provinci_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Data(),
        child: ProvinsiScreen(),
      ),
    );
  }
}
