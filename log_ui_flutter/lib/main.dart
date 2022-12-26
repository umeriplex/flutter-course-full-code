import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('images/logo.png'),
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Maintenance',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xff2d3142),
                        ),
                      ),
                      Text(
                        'Box',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xfff9703b),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff2d3142),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Welcome to our library of original guides,\nto the world of typography, which the Google.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4c5980),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(fontFamily: 'Rubik Regular'),
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffe4e7eb)),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffe4e7eb)),
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: const Icon(
                        Icons.alternate_email_outlined,
                        color: Color(0xff323f4b),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: true,
                  autocorrect: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(fontFamily: 'Rubik Regular'),
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffe4e7eb)),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffe4e7eb)),
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff323f4b),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: Color(0xff323f4b),
                      )),
                ),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik Regular',
                          color: Color(0xff2d3142),
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color(0xfff9703b),
                    borderRadius: BorderRadius.circular(12.0)),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don`t have an account ?',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff2d3142),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xfff9703b),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
