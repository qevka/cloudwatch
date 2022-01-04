import 'package:cloudwatch/Screens/weather/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherView extends GetView<WeatherController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.amber.shade300, Colors.amber.shade900])),
          ),
          //WeatherTypes.heavyRain.animation,
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Zealand".toUpperCase(),
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "-5" + "°",
                            style: GoogleFonts.spartan(textStyle: TextStyle(fontSize: 180, fontWeight: FontWeight.w400)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: RotatedBox(
                          child: Text(
                            "It's Sunny",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          quarterTurns: 3,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: Get.width,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                        color: Colors.black45),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeatherDataPoint(
                            data: "67%",
                            title: "Humidity",
                          ),
                          WeatherDataPoint(
                            data: "3.99",
                            title: "Visibility",
                          ),
                          WeatherDataPoint(
                            data: "7.01",
                            title: "Wind Speed",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherDataPoint extends StatelessWidget {
  final String data;
  final String title;

  WeatherDataPoint({required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data,
          style: GoogleFonts.spartan(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
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
