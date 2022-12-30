import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/weather_data.dart';

import 'getLocation.dart';

var dayInfo = DateTime.now();
var dateFormat = DateFormat('EEEE, d MM, yyyy').format(dayInfo);

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  var client = WeatherData();
  var data;

  info() async {
    var position = await GetPosition();
    data = await client.getData(position.latitude, position.longitude);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
        future: info(),
        builder: (context, snapshot) {
          return Container(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.75,
                  width: size.width,
                  padding: const EdgeInsets.only(top: 30),
                  margin: const EdgeInsets.only(right: 11, left: 11),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xff955cd1),
                          Color(0xff3fa2fa),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.2, 0.85]),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '${data?.cityName}',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 35,
                            fontFamily: 'MavenPro'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        dateFormat,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                            fontFamily: 'MavenPro'),
                      ),
                      // Image.asset(
                      //   'assets/images/sunny.png',
                      //   width: size.width * 0.4,
                      // ),
                      Image.network('https:${data?.icon}',
                          width: size.width * 0.36, fit: BoxFit.fill),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${data?.condition}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'MavenPro'),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${data?.temp}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'MavenPro'),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/storm.png',
                                  width: size.width * 0.15,
                                ),
                                SizedBox(height: 5),
                                Text('${data?.wind} km/h',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'MavenPro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 1),
                                Text('Wind',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontFamily: 'MavenPro',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Image.asset(
                                'assets/images/humidity.png',
                                width: size.width * 0.15,
                              ),
                              SizedBox(height: 5),
                              Text('${data?.humidity}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'MavenPro',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text('Humidity',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontFamily: 'MavenPro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              Image.asset(
                                'assets/images/wind.png',
                                width: size.width * 0.15,
                              ),
                              SizedBox(height: 5),
                              Text('${data?.wind_dir}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'MavenPro',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text('Wind Direction',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontFamily: 'MavenPro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          'Gust',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'MavenPro',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.gust} kp/h',
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'MavenPro',
                              fontSize: 25),
                        ),
                        SizedBox(height: 20),
                        //second
                        Text(
                          'Pressure',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'MavenPro',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.pressure} hpa',
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'MavenPro',
                              fontSize: 25),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          'UV',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'MavenPro',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.uv}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'MavenPro',
                              fontSize: 25),
                        ),
                        SizedBox(height: 20),
                        //second
                        Text(
                          'Precipitation',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'MavenPro',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.pricipe} mm',
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'MavenPro',
                              fontSize: 25),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          'Wind',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'MavenPro',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.wind}km/h',
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'MavenPro',
                              fontSize: 25),
                        ),
                        SizedBox(height: 20),
                        //second
                        Text(
                          'Last Update',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'MavenPro',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${data?.last_update}',
                          style: const TextStyle(
                              color: Colors.green,
                              fontFamily: 'MavenPro',
                              fontSize: 14),
                        )
                      ],
                    ))
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
