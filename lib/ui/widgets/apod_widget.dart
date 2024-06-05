import 'package:flutter/material.dart';
import 'package:flutter_nasa_apod_ui/models/apod_model.dart';
import 'package:flutter_nasa_apod_ui/utils/colors.dart';

class APODWidget extends StatelessWidget {
  final APOD apod;

  APODWidget({required this.apod});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          apod.title,
          style: TextStyle(
            color: PageColors.mediumBlueColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(apod.url),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            apod.explanation,
            style: TextStyle(
              color: PageColors.lightYellowColor,
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
