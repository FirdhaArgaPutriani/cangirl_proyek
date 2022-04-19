part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .42,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: const Color(0xFFFFBFF5),
              image: const DecorationImage(
                alignment: Alignment.center,
                image: AssetImage("assets/images/icon.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 212),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "CanGirls",
                    style: const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Align(
                    alignment: Alignment.center,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Get The Best App \nPeriod !",
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFF9DEF)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 40,
                    width:
                        MediaQuery.of(context).size.width - 7 * defaultMargin,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 40,
                    width:
                        MediaQuery.of(context).size.width - 7 * defaultMargin,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFF9DEF),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
