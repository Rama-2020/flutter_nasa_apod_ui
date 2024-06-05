import 'package:flutter/material.dart';
import 'package:flutter_nasa_apod_ui/models/apod_model.dart';
import 'package:flutter_nasa_apod_ui/services/apod_api.dart';
import 'package:flutter_nasa_apod_ui/ui/widgets/apod_widget.dart';
import 'package:flutter_nasa_apod_ui/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<APOD> futureAPOD;

  @override
  void initState() {
    super.initState();
    futureAPOD = ApiService().getAPOD();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PageColors.darkBlueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: PageColors.lightYellowColor,
                ),
              ),
              Center(
                child: FutureBuilder<APOD>(
                  future: futureAPOD,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      return APODWidget(apod: snapshot.data!);
                    } else {
                      return Text('No data available');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
