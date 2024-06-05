import 'package:flutter/material.dart';
import 'package:flutter_nasa_apod_ui/ui/pages/launch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchPage(),
    );
  }
}
