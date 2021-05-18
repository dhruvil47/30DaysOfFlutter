import 'package:ecom_catalog/models/catalog.dart';
import 'package:ecom_catalog/widgets/drawer.dart';
import 'package:ecom_catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
