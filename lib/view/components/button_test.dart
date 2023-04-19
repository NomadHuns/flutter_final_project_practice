import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.green,
        ),
        child: Text("hello"),
      ),
    );
  }
}
