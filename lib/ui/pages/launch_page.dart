import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_nasa_apod_ui/ui/pages/home_page.dart';
import 'package:flutter_nasa_apod_ui/utils/colors.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PageColors.lightYellowColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(height: 80),
              SizedBox(
                height: 300,
                child: Expanded(
                  child: Image.asset('assets/icons/logo_apod_prev_ui.png'),
                ),
              ),
              Container(
                child: Text(
                  'Picture of the day App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 43,
                    fontWeight: FontWeight.w600,
                    color: PageColors.mediumBlueColor,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 54,
                  width: 150,
                  alignment: Alignment.center,
                  color: PageColors.darkBlueColor,
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2)
              // Expanded(child: Text('')),
            ],
          ),
        ),
      ),
    );
  }
}
