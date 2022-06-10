import 'deck.dart';
import 'methods.dart';

import 'mainContainer.dart';
import 'package:flutter/material.dart';
import 'startView.dart';

class GameOver extends StatefulWidget {
  @override
  _GameOver createState() => _GameOver();
}

class _GameOver extends State<GameOver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(bottom: 5, top: 20, left: 10),
                      child: Text(
                        'GAME OVER!',
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 5, left: 10),
                      child: Text(
                        'Your score is : ' + score.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      margin: const EdgeInsets.only(
                          left: 30, right: 20, top: 20, bottom: 5),
                      child: Text(
                        'LAST 5 CARD GUESSED',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                FiveGuessedCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextButton(
                        child: Text(
                          'Retry',
                          style: TextStyle(
                              color: Color.fromARGB(255, 146, 159, 148),
                              fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 9, 52, 28),
                            minimumSize: Size(180, 50)),
                        onPressed: () {
                          setState(() {
                            callComponents();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainContainer()));
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ])),
        ));
  }
}
