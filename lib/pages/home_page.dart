import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:applications/pages/login_page.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _goLoginPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// #Hello lottie
            Container(
              height: 300,
              width: 300,
              child: Lottie.asset("assets/lotties/welcome.json"),
            ),

            /// #Welcome back!
            const Text(
              "Welcome back!",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),

            /// #Log in to your existent account of Q Allure
            const Text(
              "Log in to your existent account of Q Allure",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 25),

            /// #email
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(left: 20),
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1,
                  color: Colors.blue.shade500,
                ),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.person_outline),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            /// #password
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(left: 20),
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(CupertinoIcons.lock),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            /// #Forgot Password?
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),

            /// #Log In
            Container(
              height: 55,
              width: 200,
              child: ElevatedButton(
                onPressed: _goLoginPage,
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: const Color.fromRGBO(35, 70, 158, 0.9),
                ),
                child: const Text(
                  "LOG IN",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),

            /// #Or connect using
            Text(
              "Or connect using",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),

            /// #Facebook,  #Google
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Facebook
                Container(
                  height: 45,
                  width: 140,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(64, 91, 138, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "f  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Google
                Container(
                  height: 45,
                  width: 140,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(222, 82, 66, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "G  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Google",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),

            /// #Don't have an account?,   #Sign Up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromRGBO(31, 100, 246, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
