import 'package:flutter/material.dart';

enum WeatherCondition { sunny, rainy, cloudy, snowy }

enum DayOfWeek { mon, tue, wed, thu, fri, sat, sun }

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('Weather Forecast'),
    ),
    body: Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            maxTemp: 15,
            minTemp: -3,
            dayOfWeek: DayOfWeek.sun),

        WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            maxTemp: 12,
            minTemp: 7,
            dayOfWeek: DayOfWeek.mon),
       
        WeatherForecast(
            weatherCondition: WeatherCondition.rainy,
            maxTemp: 9,
            minTemp: 7,
            dayOfWeek: DayOfWeek.tue),
        
        WeatherForecast(
            weatherCondition: WeatherCondition.rainy,
            maxTemp: 8,
            minTemp: -1,
            dayOfWeek: DayOfWeek.wed),
       
        WeatherForecast(
            weatherCondition: WeatherCondition.snowy,
            maxTemp: 5,
            minTemp: -2,
            dayOfWeek: DayOfWeek.thu),
      
        WeatherForecast(
            weatherCondition: WeatherCondition.cloudy,
            maxTemp: 4,
            minTemp: -4,
            dayOfWeek: DayOfWeek.fri),
       
        WeatherForecast(
            weatherCondition: WeatherCondition.sunny,
            maxTemp: 3,
            minTemp: -3,
            dayOfWeek: DayOfWeek.sat),
      
      ]),
    ),
  )));
}

class WeatherForecast extends StatelessWidget {
  final WeatherCondition weatherCondition;
  final int maxTemp;
  final int minTemp;
  final DayOfWeek dayOfWeek;
  const WeatherForecast({
    required this.weatherCondition,
    required this.maxTemp,
    required this.minTemp,
    required this.dayOfWeek,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      
      ),
      child: Padding(
        padding: EdgeInsets.all(25),
      child: Column(
       mainAxisSize: MainAxisSize.min,
        children: [
          Text(
          day(),
          style: TextStyle(
          fontSize: 18,
          ),  
        ),
          SizedBox(height: 8),
          Icon(
            icon(),
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            '$maxTemp° $minTemp°', // Display temperature range
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ));
  }

  String day() {
    switch (dayOfWeek) {
      case DayOfWeek.mon:
        return 'Mon';
      case DayOfWeek.tue:
        return 'Tue';
      case DayOfWeek.wed:
        return 'Wed';
      case DayOfWeek.thu:
        return 'Thu';
      case DayOfWeek.fri:
        return 'Fri';
      case DayOfWeek.sat:
        return 'Sat';
      case DayOfWeek.sun:
        return 'Sun';
    }
  }

   IconData icon() {
    switch (weatherCondition) {
      case WeatherCondition.sunny:
        return Icons.wb_sunny;
      case WeatherCondition.rainy:
        return Icons.grain;
      case WeatherCondition.cloudy:
        return Icons.cloud;
      case WeatherCondition.snowy:
        return Icons.ac_unit;
    }
  }
}
