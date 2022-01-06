import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../weather_types.dart';

class WeatherDataPoint extends StatelessWidget {
  final String data;
  final String title;
  final WeatherTypes weather;

  WeatherDataPoint({required this.data, required this.title, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data,
          style: GoogleFonts.spartan(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: weather.textColors)),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
