import 'package:flutter/material.dart';

class LoginTwo extends StatefulWidget {
  static const id = '/login_two';
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      body:Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 35,  top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome', style: TextStyle(fontSize: 18, color: Colors.teal.shade200),),
                    const SizedBox(height: 5,),
                    const Text('Sign Up', style: TextStyle(fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(height: 46,),
                    Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: const Text('Email', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),)),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter E-Mail',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: const Text('Number', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),)),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Number',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: const Text('Address', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),)),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Address',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const  SizedBox(height: 50,),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20 ),),

                    ),
                    const  SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('OR', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15 ),),
                      ],
                    ),
                    const  SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.facebook, color: Colors.blue,),
                        SizedBox(width: 30,),
                        Icon(Icons.telegram_sharp, color: Colors.blue,),
                        SizedBox(width: 30,),
                        Icon(Icons.phone_android_rounded, color: Colors.blue,),

                      ],
                    ),
                    const SizedBox(height: 40,),
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
            )
          ],
        ),
      )
    );
  }
}
