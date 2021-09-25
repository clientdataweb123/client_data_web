import 'package:client_data/authentication_service.dart';
import 'package:client_data/screens/select.dart';
import 'package:client_data/screens/signup.dart';
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
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Column(
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(
            hintText: 'Enter email or Phone numbe',
            hintStyle: TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.blueGrey.shade500,
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade500),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade500),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          controller: password,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            counterText: 'Forgot password?',
            counterStyle: TextStyle(color: Colors.white),
            suffixIcon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.blueGrey.shade500,
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade500),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade500),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 40),
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
              context.read<AuthenticationService>().signIn(
                    email: email.text.trim(),
                    password: password.text.trim(),
                  );

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
        ElevatedButton(
          child: const SizedBox(
              width: 190,
              height: 50,
              child: Center(
                  child: Text(
                "Register a new account",
                style: TextStyle(color: Colors.white),
              ))),
          onPressed: () => Navigator.push(
              (context), MaterialPageRoute(builder: (context) => signup())),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            onPrimary: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
