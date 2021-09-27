import 'package:client_data/utils/model.dart';
import 'package:client_data/utils/post.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(this.s, this.func);
  String s;
  Function func;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        child: SizedBox(
            width: 300,
            height: 50,
            child: Center(
                child: Text(
              s,
              style: TextStyle(color: Colors.white),
            ))),
        onPressed: () async {
          func();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          onPrimary: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
