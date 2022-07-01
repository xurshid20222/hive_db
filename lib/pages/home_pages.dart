import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../servises/hive_service.dart';



class HomePage extends StatefulWidget {
  static const id = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HiveServices users = HiveServices();

   TextEditingController nameController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

  late String user;
  late String password;

   @override
   initState(){
     super.initState();
     getData();
   }


  void getData()async {
    var box =  Hive.box('my_hive');
    user = nameController.text.toString().trim();
     password = passwordController.text.toString().trim();

    user =  box.get('data', defaultValue: 'No Data');
    print('++++++++++++++++++++++++++++++++++++++++++++');
    setState((){});
  }

  void setData(String value)async {
    var box =  Hive.box('my_hive');
    await box.put('data', user);
    await box.put('data', password);
    print('=============================================');
    print('Name: $user');
    print('Name: $password');
    getData();
  }





















   // void setData()async {
   //   var  box =  Hive.box('my_hive_db');
   //   await box.put('dataName', userName );
   //   await box.put('password', passwordController);
   //   print(nameController);
   //   getData();
   // }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            const SizedBox(height: 15,),
           Container(
             height: 80,
             width: 80,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image: const DecorationImage(
                   image: AssetImage('assets/images/user.jpg'),
                   fit: BoxFit.cover,
                 )
             ),
           ),
            const SizedBox(height: 20,),
           const Text('Welcome Back!', style: TextStyle(fontSize: 25, color: Colors.white),),
            const SizedBox(height: 10,),
            const Text('Sign in to continue', style: TextStyle(fontSize: 19, color: Colors.white),),
            const SizedBox(height: 40,),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded,color: Colors.grey,),
                  hintText: '  User Name',
                  border: InputBorder.none,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              endIndent: 30,
              indent: 30,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.carpenter_sharp,color: Colors.grey,),
                  hintText: '  Password',
                  border: InputBorder.none,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              endIndent: 30,
              indent: 30,
              color: Colors.grey,
            ),
            const SizedBox(height: 20,),
            const Text('Forget Password?', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),),
            const SizedBox(height: 45,),
            // #button
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape:  BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
            ),
            const SizedBox(height: 120,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Don\'t have an account?', style: TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                Text('SIGN UP', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold),),

              ],
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
