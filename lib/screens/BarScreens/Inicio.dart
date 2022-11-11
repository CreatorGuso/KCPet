// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kcpet/data/data_noticias.dart';
import 'package:kcpet/data/data_veterinaria.dart';
import 'package:kcpet/model/noticia_model.dart';
import 'package:kcpet/model/veterinaria_model.dart';
import 'package:kcpet/screens/BarScreens/mostrar_noticia.dart';
import 'package:kcpet/screens/BarScreens/mostrar_veterinaria.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text('Veterinarias',
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 22.0, color: Colors.white)),
          const SizedBox(height: 10),
          CarouselSlider.builder(
              itemCount: carruselImages.length,
              itemBuilder: ((context, index, realIndex) {
                final carruselImage = carruselImages[index];
                return CardImages(
                  carruselImages: carruselImages[index],
                );
              }),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 4),
                scrollDirection: Axis.horizontal,
              )),
          const SizedBox(height: 40),
          const Text('Noticias',
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 22.0, color: Colors.white)),
          const SizedBox(height: 10),
          CarouselSlider.builder(
              itemCount: carruselImagesNoticias.length,
              itemBuilder: ((context, index, realIndex) {
                final imagenenesNoticia = carruselImagesNoticias[index];
                return CardImagesNoticia(
                  carruselImagesNoticia: carruselImagesNoticias[index],
                );
              }),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 2),
                scrollDirection: Axis.horizontal,
              ))
        ],
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  final Veterinaria carruselImages;
  const CardImages({Key? key, required this.carruselImages}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselImages.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        MostrarVeterinaria(carruselImages: carruselImages))));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading1.gif"),
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class CardImagesNoticia extends StatelessWidget {
  final Noticia carruselImagesNoticia;
  const CardImagesNoticia({Key? key, required this.carruselImagesNoticia})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselImagesNoticia.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MostrarNoticia(
                        carruselImages: carruselImagesNoticia))));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading1.gif"),
            image: AssetImage(carruselImagesNoticia.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
