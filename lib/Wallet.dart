import 'package:flutter/material.dart';

class Brain extends StatefulWidget {
  @override
  _BrainState createState() => _BrainState();
}

class _BrainState extends State<Brain> {
  List<String> items = ["Brainstorm", "Books", "Video", "Reading", "Relaxing"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Choose what',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'to learn today?',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    String currentItem = items[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? Colors.black
                                      : Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(currentItem,
                                      style: TextStyle(
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: selectedIndex == index
                                            ? FontWeight.bold
                                            : null,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              flex: 2,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vocabulary',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Listen 20 new words',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.play_arrow)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 4,
            ),
            Expanded(
              child: Placeholder(),
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
