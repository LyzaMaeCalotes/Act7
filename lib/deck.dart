import 'methods.dart';
import 'package:flutter/material.dart';

class MyCardsGuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, bottom: 0, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: 130,
          width: 90,
          child: Image.asset('lib/images/' + img),
        ),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, bottom: 0, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: 130,
          width: 90,
          child: Image.asset('lib/images/blank.png'),
        ),
      ),
    );
  }
}

class FiveGuessedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: 80,
            width: 55,
            child: Image.asset('lib/images/' +
                (inactiveCard.length > 0
                    ? inactiveCard[inactiveCard.length - 1].pathImg
                    : 'blank.png')),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: 80,
            width: 55,
            child: Image.asset('lib/images/' +
                (inactiveCard.length > 1
                    ? inactiveCard[inactiveCard.length - 2].pathImg
                    : 'blank.png')),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: 80,
            width: 55,
            child: Image.asset('lib/images/' +
                (inactiveCard.length > 2
                    ? inactiveCard[inactiveCard.length - 3].pathImg
                    : 'blank.png')),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: 80,
            width: 55,
            child: Image.asset('lib/images/' +
                (inactiveCard.length > 3
                    ? inactiveCard[inactiveCard.length - 4].pathImg
                    : 'blank.png')),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: 80,
            width: 55,
            child: Image.asset('lib/images/' +
                (inactiveCard.length > 4
                    ? inactiveCard[inactiveCard.length - 5].pathImg
                    : 'blank.png')),
          ),
        ),
      )
    ]);
  }
}
