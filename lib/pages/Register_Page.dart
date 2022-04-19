import 'package:flutter/material.dart';

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Register',
              style: const TextStyle(
                color: Color(0xFFFF9DEF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF9DEF),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text(
                "Welcome Back!",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFFFF9DEF),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
              const SizedBox(
                height: 17.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontSize: 13,
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Color(0xFFFF9DEF),
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () {},
                  child: const Text("Registrasi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: white,
                        fontSize: 13,
                      )),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Do you have an account?',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      ' Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFFF9DEF)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
