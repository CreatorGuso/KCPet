import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:kcpet/routes/constans_router.dart';
// import 'package:kcpet/screens/BarHome.dart';

class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              color: Colors.red,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  'Cerrar Session',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //nos redireccionara al HomeScreen
              onPressed: () async {
                // Navigator.pop(context, homeRoute);
                await FirebaseAuth.instance.signOut();
                exit(0);
                //Navigator.pushNamedAndRemoveUntil(context, "Home",
                //    (route) => route == homeRoute); //loginRoute
              },
            )
          ],
        ),
      ),
    );
  }
}
