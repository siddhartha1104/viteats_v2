import 'package:flutter/material.dart';
import 'package:viteats/pages/login.dart';
import 'package:viteats/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a),
                    ])),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Text(""),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'images/logo-black.png',
                        width: MediaQuery.of(context).size.width / 3,
                        // fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            Text("SignUp",
                                style: AppWidget.HeadlineTextFeildStyle()),
                            const SizedBox(height: 20),

                            // Name
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: AppWidget.LightTextFeildStyle(),
                                prefixIcon: const Icon(
                                  Icons.person_2_outlined,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),

                            //VIT Email
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'VIT Email',
                                hintStyle: AppWidget.LightTextFeildStyle(),
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),

                            //Password
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.LightTextFeildStyle(),
                                prefixIcon: const Icon(
                                  Icons.key_outlined,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            const SizedBox(height: 80.0),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: const Color(0xffff5722),
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Text(
                                    'SIGNUP',
                                    style: AppWidget.boldTextFeildStyle(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LogIn()));
                      },
                      child: Text(
                        "Already have an account? Login",
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
