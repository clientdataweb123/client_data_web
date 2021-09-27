import 'package:client_data/screens/supplier.dart';
import 'package:client_data/utils/appTextForm.dart';
import 'package:client_data/utils/customButton.dart';
import 'package:client_data/utils/default.dart';
import 'package:client_data/utils/model.dart';
import 'package:client_data/utils/post.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class add_item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: missing_required_param
      body: defaultWidget(addDetail(), true, false),
    );
  }
}

TextEditingController name = TextEditingController();
TextEditingController ports = TextEditingController();
TextEditingController dest = TextEditingController();
TextEditingController offer = TextEditingController();

class addDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    void func() async {
      var x = DonaloPost(
          cusName: name.text,
          offeredRate: int.parse(offer.text),
          ports: double.parse(ports.text),
          dest: dest.text);
      await PostData().post(x).then((value) {
        print('$value');
        Navigator.push((context),
            MaterialPageRoute(builder: (context) => SupplierScreen()));
      });
    }

    return Column(
      children: [
        appTextForm(cont: name, s: "Enter your name", obscure: false),
        SizedBox(height: 30),
        appTextForm(cont: ports, s: "Available ports", obscure: false),
        SizedBox(height: 30),
        appTextForm(cont: dest, s: "Destination", obscure: false),
        SizedBox(height: 30),
        appTextForm(cont: offer, s: "offered rate", obscure: false),
        SizedBox(height: 30),
        const SizedBox(height: 40),
        customButton("add customer", func)
      ],
    );
  }
}
