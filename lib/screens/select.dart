import 'package:client_data/screens/supplier.dart';
import 'package:client_data/utils/default.dart';
import 'package:flutter/material.dart';

class selectscreen extends StatelessWidget {
  const selectscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: defaultWidget(select(), true),
    );
  }
}

class select extends StatelessWidget {
  const select();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
                    "SUPPLIER",
                    style: TextStyle(color: Colors.white),
                  ))),
              onPressed: () => Navigator.push((context),
                  MaterialPageRoute(builder: (context) => SupplierScreen())),
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
                width: double.infinity,
                height: 50,
                child: Center(
                    child: Text(
                  "Client",
                  style: TextStyle(color: Colors.white),
                ))),
            onPressed: () => Navigator.push((context),
                MaterialPageRoute(builder: (context) => SupplierScreen())),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}