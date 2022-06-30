import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';



class HomePage extends StatefulWidget {
  static const id = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final usernameController  = TextEditingController();
  final passwordController  = TextEditingController();

  Future<void> _dialog() async {
    print('frefrrrrrrrrrrrrrrrrrrrrrrrrr');
    var  box = await Hive.openBox('my_hive_db');
    String username = usernameController.text.toString().trim();
    String login = passwordController.text.toString().trim();



    box.put('name', username);
    box.put('password', login);

    var  name = box.get('name');
    var password = box.get('password');

    print('Name: $name');
    print('Name: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            TextField(
              controller: usernameController,
              decoration:const InputDecoration(
                hintText: 'name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController ,
              decoration: const InputDecoration(
                hintText: 'name',
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            MaterialButton(onPressed: _dialog,
            child: const Text('PRESS'),
            ),
          ],
        ),
      ),
    );
  }
}
