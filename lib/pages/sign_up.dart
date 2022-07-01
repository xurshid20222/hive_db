
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const id = '/sign_up_page';
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            const Text('Create', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text('Account', style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 40,),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded,color: Colors.grey,),
                  hintText: '  User Name',
                  hintStyle: TextStyle(color: Colors.grey),
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
                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                  hintText: '  E-Mail',
                  hintStyle: TextStyle(color: Colors.grey),
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
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone,color: Colors.grey,),
                  hintText: '  Phone Number',
                  hintStyle: TextStyle(color: Colors.grey),
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
                  hintStyle: TextStyle(color: Colors.grey),
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
            const SizedBox(height: 100,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Already have an account?', style: TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                Text('SIGN IN', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold),),

              ],
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
