// import 'dart:js';

import 'package:client_data/authentication_service.dart';
import 'package:client_data/screens/select.dart';
import 'package:client_data/screens/signup.dart';
import 'package:client_data/utils/appTextForm.dart';
import 'package:client_data/utils/customButton.dart';
import 'package:client_data/utils/default.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: missing_required_param
      body: defaultWidget(_formLogin(), true, false),
    );
  }
}

class _formLogin extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    void func2() {
      Navigator.push(
          (context), MaterialPageRoute(builder: (context) => signup()));
    }

    void func() {
      context
          .read<AuthenticationService>()
          .signIn(
            email: email.text.trim(),
            password: password.text.trim(),
          )
          .then((value) => print(value));
    }

    // r = context;
    return Column(
      children: [
        appTextForm(
            cont: email, s: "Enter email or Phone number", obscure: false),
        SizedBox(height: 10),
        appTextForm(cont: password, s: "Password", obscure: true),
        SizedBox(height: 10),
        // customButton("Sign in", func),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: ElevatedButton(
            child: const SizedBox(
                width: double.infinity,
                height: 50,
                child: Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                ))),
            onPressed: () {
              context
                  .read<AuthenticationService>()
                  .signIn(
                    email: email.text.trim(),
                    password: password.text.trim(),
                  )
                  .then((value) {
                if (value == "Signed in")
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) => selectscreen()));
              });

              // Navigator.push((context),
              //     MaterialPageRoute(builder: (context) => selectscreen()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        customButton("Register a new account", func2),
        // ElevatedButton(
        //   child: const SizedBox(
        //       width: 190,
        //       height: 50,
        //       child: Center(
        //           child: Text(
        //         "Register a new account",
        //         style: TextStyle(color: Colors.white),
        //       ))),
        //   onPressed: () => Navigator.push(
        //       (context), MaterialPageRoute(builder: (context) => signup())),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.deepPurple,
        //     onPrimary: Colors.redAccent,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(15),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
