import 'package:client_data/utils/card.dart';
import 'package:client_data/utils/default.dart';
import 'package:client_data/utils/item_card.dart';
import 'package:flutter/material.dart';

class SupplierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: defaultWidget(supplier(), false, true),
    );
  }
}

class supplier extends StatelessWidget {
  supplier();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: cards.length * 300.0,
            child: GridView.builder(
                itemCount: cards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: cards[index],
                    )),
          ),
        )
      ],
    );
  }
}
