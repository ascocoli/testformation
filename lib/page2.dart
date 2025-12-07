import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/page.dart';
import 'package:test/page3.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});
  List images = [
    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8JTIzaW1hZ2V8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8JTIzaW1hZ2V8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8JTIzaW1hZ2V8ZW58MHx8MHx8fDA%3D,",
    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8JTIzaW1hZ2V8ZW58MHx8MHx8fDA%3D",
    "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/396e9/MainBefore.jpg",
    "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
  ];
  List<Map<String, String>> produits = [
    {
      "nom": "Banane",
      "prix": "500",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbgdJ5RnQe9bPm8jhKcmlV3FzGEtk_OhheqQ&s",
    },
    {
      "nom": "tomate",
      "prix": "300",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm-6QVkNbO5SKS1InuN3riDYtExHP5G1y2qw&s",
    },
    {
      "nom": "mangue",
      "prix": "200",
      "image":
          "https://www.vitabio.fr/img/modules/oh_ingredients/ingredients/15_picture.jpg",
    },
    {
      "nom": "papaye",
      "prix": "600",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2s96YqtDO_X99FC28HqMW9Xa3U0YrU_fIw&s",
    },
    {
      "nom": "Goyage",
      "prix": "1000",
      "image":
          "https://i-sam.unimedias.fr/2022/08/15/goyave.jpg?auto=format%2Ccompress&cs=tinysrgb&ixlib=php-4.1.0&w=1200",
    },
    {
      "nom": "Pomme",
      "prix": "1000",
      "image":
          "https://img.freepik.com/photos-gratuite/pomme-verte-isolee-blanche_2829-9403.jpg?semt=ais_se_enriched&w=740&q=80",
    },
  ];

  List<Widget> imageList(BuildContext contex) {
    BuildContext context;
    List<Widget> img = [];
    for (var element in produits) {
      img.add(
        Container(
          // padding: EdgeInsets.only(right: 20),
          // // margin: EdgeInsets.only(right: 20),
          // width: 400,
          // height: 400,
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.red, width: 3),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nom: ${element["nom"]}"),
              GestureDetector(
                onTap: () {
                  Get.to(PageAcceuil(produits: element));
                },
                child: Image.network(element["image"]!, width: 250),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.red, width: 3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("${element["prix"]} CFA"),
                    Icon(Icons.favorite),
                    Icon(Icons.comment),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      );
    }
    return img;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon application", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          Icon(Icons.alarm, color: Colors.white),
          Icon(Icons.mail, color: Colors.white),
          Icon(Icons.money, color: Colors.white),
        ],
        // leading: Icon(Icons.menu, color: Colors.white),
      ),
      drawer: Drawer(child: Aceuil()),
      body: SingleChildScrollView(child: Column(children: imageList(context))),
    );
  }
}
