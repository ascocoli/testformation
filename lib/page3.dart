import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageAcceuil extends StatelessWidget {
  Map produits;
  PageAcceuil({super.key, required this.produits});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon titre"), backgroundColor: Colors.amber),
      body: Column(
        children: [
          Text("${produits["nom"]}"),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.network("${produits["image"]}"),
          ),
          Text("${produits["prix"]} CFA"),
        ],
      ),
    );
  }
}
