import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kcpet/routes/constans_router.dart';
import 'package:kcpet/screens/createLogin_sreen.dart';
import 'package:kcpet/screens/home_screen.dart';
import 'package:kcpet/screens/login_screen.dart';
import 'src/app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp();
  //inicializamos Defaul para Firebase.
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      onGenerateRoute: Router.generateRoute,
      initialRoute: loginRoute,
    );
  }
}

//cambiaremos el manejo de rutas en flutter
//Creamos la clase rutas.
class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case mainApp:
        return MaterialPageRoute(builder: (_) => const MyApp());
      // ignore: no_duplicate_case_values
      // case exitRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case createLoginRoute:
        return MaterialPageRoute(builder: (_) => const CreateLoginUser());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
