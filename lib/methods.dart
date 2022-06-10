import 'dart:math';
import 'package:flutter/material.dart';

import 'deck.dart';

int score = 0;
int cardCount = 1;
int previous = 0;
String img = "";
List<ShuffleCards> activeCard = [];
List<ShuffleCards> inactiveCard = [];

void callComponents() {
  activeCard = [];
  inactiveCard = [];
  int counter = 1;
  for (int i = 0; i < 52; i++) {
    ShuffleCards sc = ShuffleCards();
    sc.cardId = i + 1;
    sc.pathImg = (i + 1).toString() + ".png";

    if (counter <= 13) {
      sc.equavalent = counter;
      counter++;
    } else {
      counter = 1;
      sc.equavalent = counter;
      counter++;
    }
    activeCard.add(sc);
  }
  ChecktheCard('initiate');
  score = 0;
  cardCount = 1;
}

bool ChecktheCard(String action) {
  int guessedCard = 0;
  int randomres = 0;
  bool isnotGuessed = false;
  while (!isnotGuessed) {
    Random r = new Random();
    int low = 1;
    int high = activeCard.length;
    randomres = r.nextInt(high - low) + low;
    bool isExist = false;
    for (int i = 0; i < activeCard.length; i++) {
      if (randomres == activeCard[i].cardId) {
        isnotGuessed = true;
        img = activeCard[i].pathImg;
        guessedCard = activeCard[i].equavalent;
        if (action != 'initiate') {
          inactiveCard.add(activeCard[i]);
        }
        activeCard.remove(activeCard[i]);
      }
    }
  }
  if (action == 'high') {
    if (guessedCard >= previous) {
      previous = guessedCard;
      return true;
    } else {
      previous = guessedCard;
      return false;
    }
  } else if (action == 'low') {
    if (guessedCard < previous) {
      previous = guessedCard;
      return true;
    } else {
      previous = guessedCard;
      return false;
    }
  } else {
    previous = guessedCard;
    return false;
  }
}

class ShuffleCards {
  String pathImg = "";
  int cardId = 0;
  int equavalent = 0;
}
