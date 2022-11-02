import 'dart:ui';

import 'package:design_1/config/colors.dart';
import 'package:design_1/config/screen_size.dart';
import 'package:design_1/screens/bottom.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/image/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 3.5,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login.',
                        style: TextStyle(
                          fontSize: 50,
                          color: ColorConfig.secondaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 70,
                    ),
                    // ignore: prefer_const_constructors
                    Align(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Please sign in to continue',
                        style: TextStyle(
                          color: Color.fromARGB(255, 75, 77, 82),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: height / 20),
                    TextFormField(
                      controller: _usernameController,
                      style: const TextStyle(
                        color: ColorConfig.darkBlackColor,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: ColorConfig.lightWhiteColor,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: ColorConfig.secondaryColor,
                        ),
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: ColorConfig.secondaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      style: const TextStyle(
                        color: ColorConfig.darkBlackColor,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: ColorConfig.lightWhiteColor,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        prefixIcon: Icon(
                          Icons.key,
                          color: ColorConfig.secondaryColor,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: ColorConfig.secondaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (ctx1) => const ScreenBottom()),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(300, 50),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forget Password?'),
                    ),
                    SizedBox(
                      height: height / 500,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'don\'t have an account??',
                          style: TextStyle(
                            color: ColorConfig.darkBlackColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Sign-up'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void checkLogin(BuildContext ctx) {
  //   final _username = _usernameController.text;
  //   final _password = _passwordController.text;
  //   if (_username == _password) {
  //     Navigator.of(ctx).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (ctx1) => const ScreenHome(
  //           title: 'home',
  //         ),
  //       ),
  //     );
  //   }
}
