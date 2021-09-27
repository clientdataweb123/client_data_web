import 'package:flutter/material.dart';

class appTextForm extends StatelessWidget {
  appTextForm({this.cont, this.s, this.obscure = false, this.warning = ''});

  TextEditingController cont = TextEditingController();
  bool obscure;
  String s, warning;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      controller: cont,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: s,
        hintStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.blueGrey.shade500,
        labelStyle: const TextStyle(fontSize: 12),
        contentPadding: const EdgeInsets.only(left: 30),
        helperText: warning,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade500),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade500),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
