import 'package:flutter/material.dart';
import 'package:kcpet/screens/BarScreens/details_Felinos.dart';
import '../../model/diccionario_animales.dart';
// import 'details_animales.dart';
//import 'package:list_view/model/diccionario_animalesModel.dart';
//import 'package:list_view/screen/details_animales.dart';

class EnciclopediaFelinos extends StatelessWidget {
  const EnciclopediaFelinos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: animalesListFelinos.length,
          itemBuilder: (context, index) {
            Animales animales = animalesListFelinos[index];
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
                          builder: (context) => DetailsAnimalesFelinos(
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
