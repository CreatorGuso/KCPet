import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kcpet/routes/constans_router.dart';
import 'package:kcpet/screens/home_screen.dart';
import 'package:kcpet/widgets/input_decoration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email, password;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    //Me retorna el tamaño de la pantalla
    final size = MediaQuery.of(context).size;
    //Me retorna el tamaño de la pantalla
    //contenedor principal del login
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [cajaPurpura(size), iconoPersona(), loginForm(context)],
        ),
      ),
    );
  }

  SingleChildScrollView loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //sideBox es el pading del container un widget de espacio.
          const SizedBox(
            height: 250,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            //height: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 5))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text('Login', style: Theme.of(context).textTheme.headline4),
                const SizedBox(
                  height: 30,
                ),
                //formulario
                Container(
                  child: Form(
                    key: formkey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecorations.inputDecoration(
                              hintext: 'example@gmail.com',
                              labelText: 'Correo Electronico',
                              icono: const Icon(Icons.alternate_email_rounded)),
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regExp = new RegExp(pattern);
                            return regExp.hasMatch(value ?? '')
                                ? null
                                : 'El valor ingresado no es un correo';
                          },
                          onSaved: (value) {
                            email = value!;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecorations.inputDecoration(
                              hintext: '********',
                              labelText: 'Contraseña',
                              icono: const Icon(Icons.lock_outline)),
                          validator: (value) {
                            return (value != null && value.length >= 8)
                                ? null
                                : 'La contraseña no es valida';
                          },
                          onSaved: (value) {
                            password = value!;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledColor: Colors.grey,
                          color: Colors.deepPurple,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: const Text(
                              'Ingresar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          //nos redireccionara al HomeScreen
                          onPressed: () async {
                            //Navigator.pushNamed(context, homeRoute);
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              try {
                                // var userResult = await firebaseAuth
                                //     .createUserWithEmailAndPassword(
                                //         email: email, password: password);
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: email, password: password);
                                Navigator.pushNamed(context, homeRoute,
                                    arguments: {'correo': email});
                                print(userCredential.user!.uid);
                              } on FirebaseAuthException catch (e) {
                                print(e.toString());
                                if (e.code == 'user-not-found') {
                                  print('No existe o esta mal el correo');
                                } else if (e.code == 'wrong-password') {
                                  print('No existe o esta mal la contraseña');
                                }
                              }
                            } else {}
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Crear una nueva cuenta',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            color: Colors.red,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 13),
              child: const Text(
                'Crear Cuenta',
                style: TextStyle(color: Colors.white),
              ),
            ),
            //nos redireccionara al HomeScreen
            onPressed: () {
              Navigator.pushNamed(context, createLoginRoute);
            },
          )
        ],
      ),
    );
  }

  SafeArea iconoPersona() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

  Container cajaPurpura(Size size) {
    return Container(
      //declaramos una decoracion.
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1),
      ])),
      //ancho del widget superior
      width: double.infinity,
      //size es el tamaño de la pantalla y lo estoy multiplicando por 0.4
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(top: 90, left: 30, child: burbuja()),
          Positioned(top: -40, left: -30, child: burbuja()),
          Positioned(top: -50, right: -20, child: burbuja()),
          Positioned(bottom: -50, left: 10, child: burbuja()),
          Positioned(bottom: 120, right: 20, child: burbuja())
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(225, 225, 225, 0.07),
      ),
    );
  }
}
