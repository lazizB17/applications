import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:applications/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static const id = "/login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _goHomePage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #appBar
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(254, 255, 255, 0.1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            splashRadius: 25,
            onPressed: _goHomePage,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      /// #body
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// #Let's Get Started!
            const Text(
              "Let's Get Started!",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),

            /// #Create an account to Q Allure to get all features
            const Text(
              "Create an account to Q Allure to get all features",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 25),

            /// #Name
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
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: Icon(Icons.person_outline, color: Colors.grey[500]),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            /// #Email
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
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.grey[500]),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            /// #Phone
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
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: Icon(Icons.phone_iphone, color: Colors.grey[400]),
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
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: Icon(CupertinoIcons.lock, color: Colors.grey[400]),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            /// #Confirm Password
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
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: Icon(CupertinoIcons.lock, color: Colors.grey[400]),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),

            /// #Create
            Container(
              height: 55,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: const Color.fromRGBO(40, 80, 199, 1),
                ),
                child: const Text(
                  "CREATE",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),

            /// #Already have an account?,  #Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Login here",
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
