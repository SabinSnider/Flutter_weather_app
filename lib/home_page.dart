import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                    'ConstantLine',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 35,
                        fontFamily: 'MavenPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Monday,03 Mars',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 15,
                        fontFamily: 'MavenPro'),
                  ),
                  Image.asset(
                    'assets/images/sunny.png',
                    width: size.width * 0.4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sunny',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'MavenPro'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '15@',
                    style: TextStyle(
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
                            const Text('18.1 km/h',
                                style: TextStyle(
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
                          const Text('81',
                              style: TextStyle(
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
                          const Text('SE',
                              style: TextStyle(
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
                    const Text(
                      '32.0 kp/h',
                      style: TextStyle(
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
                    const Text(
                      '1025.0 hpa',
                      style: TextStyle(
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
                      'Gust',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: 'MavenPro',
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '1.0',
                      style: TextStyle(
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
                    const Text(
                      '0.0 mm',
                      style: TextStyle(
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
                    const Text(
                      '19.1km/h kp/h',
                      style: TextStyle(
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
                    const Text(
                      '2022-03-21',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'MavenPro',
                          fontSize: 18),
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
