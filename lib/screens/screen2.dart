import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = 'Screen2';

  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
              Column(
                children: [
                  Text('Hello,jade'),
                  Text('Ready to workout'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
