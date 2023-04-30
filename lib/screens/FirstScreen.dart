import 'package:aichatbot/screens/AddUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFF123F53),
        body: Stack(
          children: [
            Image.asset(
              'assets/wavyvector.png',
              width: screenWidth,
            ),
            Positioned(
              top: 20,
              left: 15, // Adjust the position of the top image
              child: Image.asset(
                'assets/qst.gif',
                width: 210,
                height: 210,
              ), // Top image
            ),
            Positioned(
                top: 460,
                left: 20,
                child: Column(
                  children: [
                    Text(
                      'with BOBO',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 30,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You'll have",
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 30,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The Answers !',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 30,
                        color: Color(0xFF00FFE2),
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Positioned(
              child: Image.asset(
                'assets/puzzle.gif',
                width: 210,
                height: 210,
              ),
              top: 330,
              left: 185,
            ),
            Positioned(
                top: 170,
                left: 180,
                child: Column(
                  children: [
                    Text(
                      'Do you have',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 30,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Questions about",
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 25,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'subject',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 30,
                        color: Color(0xFF00FFE2),
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: 650,
              left: 80,
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddUsername()),
                  )
                },
                child: Container(
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Color(0xFF00FFE2),
                      width: 2.0,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    " let's Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
