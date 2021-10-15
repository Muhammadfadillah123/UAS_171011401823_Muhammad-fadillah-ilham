import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_weather/models/WeatherData.dart';

class Weather extends StatelessWidget {
  final WeatherData weather;
  
 


  Weather({Key key, @required this.weather}) : super(key: key);
 int _toFahrenheit(double celsius) => ((celsius - 273.15)).round();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weather.name, style: new TextStyle(color: Colors.white)),
        Text(weather.main, style: new TextStyle(color: Colors.white, fontSize: 32.0)),
        
        Image.network('https://openweathermap.org/img/w/${weather.icon}.png'),
        Text('${_toFahrenheit(weather.temp).toString()}°C',  style: new TextStyle(color: Colors.white, fontSize: 24.0)),
        Text(new DateFormat.yMMMd().format(weather.date), style: new TextStyle(color: Colors.white)),
        Text(new DateFormat.Hm().format(weather.date), style: new TextStyle(color: Colors.white)),
      ],
    );
  }
}