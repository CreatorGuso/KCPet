import 'package:flutter/material.dart';
import '../../model/diccionario_animales.dart';
import 'details_animales.dart';
//import 'package:list_view/model/diccionario_animalesModel.dart';
//import 'package:list_view/screen/details_animales.dart';

class Enciclopedia extends StatelessWidget {
  const Enciclopedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: animalesList.length,
          itemBuilder: (context, index) {
            Animales animales = animalesList[index];
            return Card(
              child: ListTile(
                title: Text(animales.tipo),
                subtitle: Text(animales.raza),
                leading: Image.network(animales.imageURL),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsAnimales(
                                animales,
                                animales: animales,
                              )));
                },
              ),
            );
          }),
    );
  }
}
