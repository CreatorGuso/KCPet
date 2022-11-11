import 'package:flutter/material.dart';
import 'package:kcpet/screens/BarScreens/Cuenta.dart';
import 'package:kcpet/screens/BarScreens/enciclopediaAves.dart';
import 'package:kcpet/screens/BarScreens/enciclopediaFelinos.dart';
import 'package:kcpet/screens/BarScreens/enciclopediaInsectos.dart';
import 'package:kcpet/screens/BarScreens/enciclopediaReptiles.dart';
import 'package:kcpet/screens/BarScreens/enciclopediaRoedores.dart';
import 'package:kcpet/screens/BarScreens/enciclopedia.dart';
import 'package:kcpet/screens/BarScreens/Inicio.dart';
import 'package:kcpet/screens/BarScreens/googleMaps.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Inicio();
      case 1:
        return const Enciclopedia();
      case 3:
        return const GoogleMaps();
      case 4:
        return const Cuenta();
      case 5:
        return const EnciclopediaFelinos();
      case 6:
        return const EnciclopediaRoedores();
      case 7:
        return const EnciclopediaAves();
      case 8:
        return const EnciclopediaReptiles();
      case 9:
        return const EnciclopediaInsectos();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final login = arguments['correo'];
    //intento de extraer el correo me quede sin tiempo XD
    return Scaffold(
      appBar: AppBar(
        title: const Text('KCPet'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //const porque no cambiara deberia cambiar en todos casos.
            // const UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundColor: Colors.red,
            //     child: Text(':)', style: TextStyle(fontSize: 40.0)),
            //   ),
            //   accountName: null,
            //   accountEmail: null,
            // ),
            ListTile(
              title: const Text('Inicio'),
              leading: const Icon(Icons.house),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: const Text('Enciclopedia de Caninos'),
              leading: const Icon(Icons.photo_library),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: const Text('Enciclopedia de Felinos'),
              leading: const Icon(Icons.photo_library),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(5);
              },
            ),
            ListTile(
              title: const Text('Enciclopedia de Roedores'),
              leading: const Icon(Icons.photo_library),
              selected: (6 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(6);
              },
            ),
            ListTile(
              title: const Text('Enciclopedia de Aves'),
              leading: const Icon(Icons.photo_library),
              selected: (7 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(7);
              },
            ),
            ListTile(
              title: const Text('Enciclopedia de Reptiles'),
              leading: const Icon(Icons.photo_library),
              selected: (8 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(8);
              },
            ),
            ListTile(
              title: const Text('Enciclopedia de Insectos'),
              leading: const Icon(Icons.photo_library),
              selected: (9 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(9);
              },
            ),
            // const Divider(),Divider de menu
            ListTile(
              title: const Text('GoogleMaps'),
              leading: const Icon(Icons.add_location_outlined),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            ListTile(
              title: const Text('Cuenta'),
              leading: const Icon(Icons.supervised_user_circle_rounded),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(4);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
