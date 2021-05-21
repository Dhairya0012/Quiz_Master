import 'package:flutter/material.dart';

import 'Components/body/body.dart';

class homePage extends StatelessWidget {
  const homePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeBody(),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
