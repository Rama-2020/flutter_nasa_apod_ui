import 'package:flutter/material.dart';
import 'package:flutter_nasa_apod_ui/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PageColors.darkBlueColor,
      body: SafeArea(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: PageColors.lightYellowColor,
          ),
        ),
      ),
    );
  }
}
