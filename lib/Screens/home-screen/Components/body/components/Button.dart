import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_with_flutter/Screens/home-screen/Classes/logics.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../components/../body.dart';

import 'Question.dart';

class Button extends StatefulWidget {
  Button({
    this.color,
    this.text,
    Key key,
  }) : super(key: key);

  Color color;
  String text;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  classx inst = classx();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (inst.limit == "Reached") {
          classx.textStreamController.close();
          classx.iconStreamController.close();
          var alert = Alert(
            context: context,
            title: "Message",
            desc: "Thanks For Attempting Quiz",
            buttons: [
              DialogButton(
                child: Text(
                  "Cool",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                width: 120,
                onPressed: () {
                  SystemNavigator.pop();
                },
              )
            ],
          ).show();
        } else {
          if (widget.text == "True") {
            if (inst.getSol() == 1) {
              classx.iconStreamController.sink.add(
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              );
            } else if (inst.getSol() == 0) {
              classx.iconStreamController.sink.add(Icon(
                Icons.close,
                color: Colors.red,
              ));
            }
            inst.incIndex();
            classx.textStreamController.sink
                .add(inst.getQuesArray()[inst.getIndex()]);
          }
          if (widget.text == "False") {
            if (inst.getSol() == 0) {
              classx.iconStreamController.sink.add(
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              );
            } else if (inst.getSol() == 1) {
              classx.iconStreamController.sink.add(Icon(
                Icons.close,
                color: Colors.red,
              ));
            }
            inst.incIndex();
            classx.textStreamController.sink
                .add(inst.getQuesArray()[inst.getIndex()]);
          }
        }
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        color: widget.color,
      ),
    );
  }
}
