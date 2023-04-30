import 'package:aichatbot/screens/ChatScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddUsername extends StatefulWidget {
  const AddUsername({super.key});

  @override
  State<AddUsername> createState() => _AddUsernameState();
}

class _AddUsernameState extends State<AddUsername> {
  TextEditingController _controllername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF123F53),
      body: Stack(
        children: [
          Positioned(
              child: Image.asset(
                'assets/hibot.png',
                width: 240,
                height: 240,
              ),
              top: 40,
              left: 80),
          Positioned(
            child: Image.asset('assets/leftwave.png'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            child: Image.asset('assets/rightwave.png'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
              top: 320,
              left: 100,
              child: Text(
                'enter your name :',
                style: TextStyle(
                    fontFamily: 'Dosis', color: Colors.white, fontSize: 20),
              )),
          Positioned(
            top: 370,
            left: 70,
            child: SizedBox(
              width: 200,
              child: TextField(
                controller: _controllername,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Color(0xFF00FFE2)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 530,
            left: 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF00FFE2),
                onPrimary: Color(0xFF123F53),
                padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 15), // sets the padding of the button
                elevation: 5, // sets the elevation of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      25), // sets the border radius of the button
                  side: BorderSide(
                    width: 2, // sets the width of the border
                    color: Colors.white, // sets the color of the border
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
