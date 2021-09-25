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
            height: 600,
            child: GridView.builder(
                itemCount: cards.length + 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
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
