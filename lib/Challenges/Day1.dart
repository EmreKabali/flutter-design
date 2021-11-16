import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6DEC8),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              delay: Duration(milliseconds: 1000),
              child: Image.network(
                  "https://cdn.dribbble.com/users/3484830/screenshots/16787618/media/b134e73ef667b926c76d8ce3f962dba2.gif"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: FadeInUp(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 1000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Learning code is now more easy'),
                    Text(
                        'Are you ready to learn languages \neasily in the funniest way?'),
                    FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      delay: Duration(milliseconds: 1000),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            height: 45,
                            padding: EdgeInsets.only(right: 20, left: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(onPressed: () {}, child: Text('Skip'))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
