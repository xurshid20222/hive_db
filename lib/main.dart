import 'package:flutter/material.dart';
import 'package:hive_db/pages/home_pages.dart';
import 'package:hive_db/pages/login_2.dart';
import 'package:hive_db/pages/login_protsess.dart';
import 'package:hive_db/pages/sign_up.dart';
import 'package:hive_flutter/adapters.dart';


void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.openBox('my_hive');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginTwo(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SignUp.id: (context) => const SignUp(),
        LoginProtsess.id: (context) => const LoginProtsess(),
        LoginTwo.id: (context) => const LoginTwo(),
      },
    );
  }
}




