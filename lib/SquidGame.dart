import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SquidGame extends StatefulWidget {
  @override
  _SquidGameState createState() => _SquidGameState();
}

class _SquidGameState extends State<SquidGame> {
  List<String> items = [
    "https://i2.wp.com/www.politikyol.com/wp-content/uploads/2021/10/Squid-Games.jpg?fit=2000%2C1333&ssl=1",
    "https://www.cumhuriyet.com.tr/Archive/2021/10/2/1873546/kapak_094953.jpg",
    "https://i2.milimaj.com/i/milliyet/75/247x170/618b994d86b2441100d52c45.jpg",
    "https://www.turkmmo.com/wp-content/uploads/2021/10/squid-game-the-forntman.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.all(20),
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Expanded(
                                  child: ListView.builder(
                                itemCount: items.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext cntxt, int index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Container(
                                          height: 180,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 3))
                                            ],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            color: Colors.red,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(items[index]),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              RaisedButton(
                                                onPressed: () {},
                                                child: Text('Watch'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Select Part and Start to Watch",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Lottie.network(
                          'https://assets3.lottiefiles.com/private_files/lf30_hsq0qoxh.json',
                          width: size.width,
                          height: 150),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
