import 'package:flutter/material.dart';
import 'package:quiz_with_flutter/Screens/home-screen/Classes/logics.dart';

class result extends StatelessWidget {
  result({Key key}) : super(key: key);

  classx inst = classx();
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
        stream: classx.iconStreamController.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            scoreKeeper.add(snapshot.data);
          }

          return Row(
            children: scoreKeeper,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          );
        },
      ),
    );
  }
}
