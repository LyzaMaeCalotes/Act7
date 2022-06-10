import 'package:hilo/methods.dart';

import 'mainContainer.dart';
import 'package:flutter/material.dart';

class startView extends StatefulWidget {
  @override
  _startView createState() => _startView();
}

class _startView extends State<startView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Container(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: ExactAssetImage('lib/images/logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                      child: TextButton(
                        child: Text(
                          'PLAY THE GAME',
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
                  )
                ],
              )
            ],
          ),
        )));
  }
}
