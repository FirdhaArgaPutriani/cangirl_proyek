import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const MaterialColor pink = MaterialColor(
  0xFFFF9DEF,
  <int, Color>{
    50: Color(0xFFFF9DEF),
    100: Color(0xFFFF9DEF),
    200: Color(0xFFFF9DEF),
    300: Color(0xFFFF9DEF),
    400: Color(0xFFFF9DEF),
    500: Color(0xFFFF9DEF),
    600: Color(0xFFFF9DEF),
    700: Color(0xFFFF9DEF),
    800: Color(0xFFFF9DEF),
    900: Color(0xFFFF9DEF),
  },
);

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: pink,
      ),
      home: const Profil(),
    );
  }
}

class Profil extends StatefulWidget {
  const Profil({Key key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Profil",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/logo1.png'),
            //Menangani kejadian saat menu Call diklik
            onPressed: () {
              //FlutterToast.showToast("Panggilan Telepon");
            },
          ),
        ],
      ),
      body: const Data(),
    );
  }
}

class Data extends StatefulWidget {
  const Data({Key key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Center(
              child: Image.asset('assets/Male.png'),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Nama :",
            style: TextStyle(
              color: Color(0xFFFF9DEF),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.name,
            cursorColor: Color(0xFFFF9DEF),
            decoration: InputDecoration(
              hoverColor: Color(0xFFFF9DEF),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Tanggal Lahir :",
            style: TextStyle(color: Color(0xFFFF9DEF)),
          ),
          const TextField(
            keyboardType: TextInputType.datetime,
            cursorColor: Color(0xFFFF9DEF),
            decoration: InputDecoration(
              hoverColor: Color(0xFFFF9DEF),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Email :",
            style: TextStyle(
              color: Color(0xFFFF9DEF),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Color(0xFFFF9DEF),
            decoration: InputDecoration(
              hoverColor: Color(0xFFFF9DEF),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Phone :",
            style: TextStyle(
              color: Color(0xFFFF9DEF),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            cursorColor: Color(0xFFFF9DEF),
            decoration: InputDecoration(
              hoverColor: Color(0xFFFF9DEF),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color(0xFFFF9DEF),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              onPressed: () {},
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color(0xFFFF9DEF),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              onPressed: () {},
              child: const Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
