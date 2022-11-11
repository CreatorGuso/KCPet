import 'package:flutter/material.dart';

import '../../model/diccionario_animales.dart';
//import 'package:list_view/model/diccionario_animalesModel.dart';

class DetailsAnimalesFelinos extends StatelessWidget {
  const DetailsAnimalesFelinos(anima, {super.key, required this.animales});

  final Animales animales;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(animales.raza),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    animales.raza,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Image.network(animales.imageURL),
                Text(
                  animales.descripcion,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 22.0),
                )
              ],
            ),
          ),
        ));
  }
}
