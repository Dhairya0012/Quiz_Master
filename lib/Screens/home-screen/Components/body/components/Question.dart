import 'dart:async';

import 'package:flutter/material.dart';
import '../../../Classes/logics.dart';

class Question extends StatelessWidget {
  Question({
    Key key,
    @required this.question,
  }) : super(key: key);

  final String question;

  @override
  Widget build(BuildContext context) {
    classx inst = classx();
    String data = inst.getQuesArray()[inst.getIndex()];
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: StreamBuilder(
          stream: classx.textStreamController.stream,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              data = snapshot.data;
            }

            return Text(
              data,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            );
          },
        )),
      ),
      flex: 5,
    );
  }
}
