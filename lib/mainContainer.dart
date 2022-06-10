import 'deck.dart';
import 'package:flutter/material.dart';
import 'retryView.dart';
import 'methods.dart';

class MainContainer extends StatefulWidget {
  @override
  _MainContainer createState() => _MainContainer();
}

class _MainContainer extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      right: 17, left: 17, bottom: 10, top: 10),
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 80, bottom: 30),
                  color: Color.fromARGB(30, 2, 251, 85),
                  child: Text(
                    'Score: ' + score.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 80, bottom: 30),
                  color: Color.fromARGB(30, 2, 251, 85),
                  child: Text(
                    'Cards: ' + activeCard.length.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [MyCardsGuest(), MyCards()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  margin: const EdgeInsets.only(
                      left: 30, right: 20, top: 0, bottom: 30),
                  child: Text(
                    'Guessed card',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  margin: const EdgeInsets.only(
                      left: 30, right: 20, top: 0, bottom: 30),
                  child: Text(
                    'Guess this card',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                )
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
                    padding: const EdgeInsets.only(
                        top: 35, bottom: 5, left: 15, right: 15),
                    child: TextButton(
                      child: Container(
                        width: 80,
                        height: 70,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: ExactAssetImage('lib/images/higher.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (ChecktheCard('high')) {
                            score++;
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameOver()));
                          }
                          cardCount++;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 15, left: 15, right: 15),
                  child: TextButton(
                    child: Container(
                      width: 80,
                      height: 70,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: ExactAssetImage('lib/images/lower.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (ChecktheCard('low')) {
                          score++;
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GameOver()));
                        }
                        cardCount++;
                      });
                    },
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
