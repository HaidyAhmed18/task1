import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = 'Screen1';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/photo.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Moody',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Spacer(),
                  badges.Badge(
                    badgeContent: Text(''),
                    child: Icon(Icons.add_alert_rounded),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Hello,'),
                  Text(
                    'Sara Rose ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 25),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'How are you feeling today?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/love.jpg',
                        height: 50,
                        width: 50,
                      ),
                      Text('Love'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/happy.jpg',
                        height: 50,
                        width: 50,
                      ),
                      Text('Cool'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/smile.jpg',
                        height: 50,
                        width: 50,
                      ),
                      Text('Happy'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Column(children: [
                    Image.asset(
                      'assets/images/sad.jpg',
                      width: 50,
                      height: 50,
                    ),
                    Text('Sad'),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('See more', style: TextStyle(color: Colors.green)),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: CarouselSlider(
                items: image
                    .map((item) => Container(
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: 400,
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Exercise',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('See more', style: TextStyle(color: Colors.green)),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<String> image = ['assets/images/photo1.jpg'];
}
