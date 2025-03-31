import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Authentication/Views/login_screen1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: SizedBox(
                width: 200,
                child: Image.asset("assets/icons/pngegg.png"),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen1()),
                );
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 94, 171),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Design & Develop by Bhojsoft Solution",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color:Color.fromARGB(255, 0, 94, 171)),
            ),
            const Text(
              "Made in INDIA",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color:Color.fromRGBO(255, 77, 0, 1)),
            ),
            const Spacer(),
          ],
        )
      );
  }
}