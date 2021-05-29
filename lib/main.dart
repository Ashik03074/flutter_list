import 'package:catalauge/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import 'models/catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
    );
  }
}
