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
                  SizedBox(
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
                  Text(
                    'Sunny',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MavenPro'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
