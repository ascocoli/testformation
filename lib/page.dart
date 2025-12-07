import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page4.dart';

class Aceuil extends StatelessWidget {
  const Aceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ElevatedButton(
            onPressed: () => Get.to(Page4()),
            child: Text("Vers page4"),
          ),
        ),
      ),
    );
  }
}
