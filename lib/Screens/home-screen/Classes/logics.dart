import 'dart:async';

import 'package:flutter/cupertino.dart';

class classx {
  int _quesIndex = 0;
  List<String> _quesArray = [
    'Some cats are actually allergic to humans',
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green',
    'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
    'It is illegal to pee in the Ocean in Portugal.',
    'No piece of square dry paper can be folded in half more than 7 times.',
    'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    'The total surface area of two human lungs is approximately 70 square metres.',
    'Google was originally called \"Backrub\".',
    'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
  ];
  List _solArray = [1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1];
  String limit = "";

  void incIndex() {
    if (_quesIndex < _quesArray.length - 1) {
      _quesIndex += 1;
    }
    if (_quesIndex >= _quesArray.length - 1) {
      limit = "Reached";
    }

    print(_quesIndex);
  }

  String getQuestion() {
    return _quesArray[_quesIndex];
  }

  int getSol() {
    return _solArray[_quesIndex];
  }

  int getIndex() {
    return _quesIndex;
  }

  void setIndex(nIndex) {
    _quesArray = nIndex;
  }

  List getQuesArray() {
    return _quesArray;
  }

  static final textStreamController = StreamController<String>();

  static final iconStreamController = StreamController();
}
