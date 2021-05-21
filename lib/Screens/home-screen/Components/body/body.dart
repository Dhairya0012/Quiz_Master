import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_with_flutter/Screens/home-screen/Classes/logics.dart';
import 'package:quiz_with_flutter/Screens/home-screen/Components/body/components/Result.dart';

import 'components/Button.dart';
import 'components/Question.dart';

class homeBody extends StatelessWidget {
  homeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Question(question: "question"),
          Button(
            color: Colors.green,
            text: "True",
          ),
          Button(
            color: Colors.red,
            text: "False",
          ),
          result(),
        ],
      ),
    );
  }
}
