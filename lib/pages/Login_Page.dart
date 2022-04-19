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

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const LoginA(title: 'Log in'),
    );
  }
}

// Login
class LoginA extends StatefulWidget {
  const LoginA({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<LoginA> createState() => _LoginStateA();
}

class _LoginStateA extends State<LoginA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFFFF9DEF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome Back!',
            style: TextStyle(
              color: Color(0xFFFF9DEF),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          const TextField(
            keyboardType: TextInputType.name,
            cursorColor: Color(0xFFFF9DEF),
            decoration: InputDecoration(
              hintText: "Username",
              hoverColor: Color(0xFFFF9DEF),
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          const TextField(
            obscureText: true,
            cursorColor: Color(0xFFFF9DEF),
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
              child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Color(0xFFFF9DEF)),
                  ))),
          const SizedBox(
            height: 250,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
                fillColor: const Color(0xFFFF9DEF),
                elevation: 0.0,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {},
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                )),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Dont have an account?'),
                Text(
                  ' Register',
                  style: TextStyle(
                    color: Color(0xFFFF9DEF),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
