import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GoodBye extends StatefulWidget {
  const GoodBye({super.key});

  @override
  State<GoodBye> createState() => _GoodByeState();
}

class _GoodByeState extends State<GoodBye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF123F53),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 25, 25, 25),
            child: Image.asset(
              'assets/byebot.png',
            ),
          ),
          Text(
            'I hope my assistance was helpful',
            style: TextStyle(
              fontFamily: 'Dosis',
              fontSize: 27,
              color: Color(0xFF00FFE2),
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
            'GoodBye !',
            style: TextStyle(
              fontFamily: 'Dosis',
              fontSize: 30,
              color: Color(0xFF00FFE2),
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
            height: 130,
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Exit',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'Dosis',
                shadows: [
                  Shadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(2, 2),
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
