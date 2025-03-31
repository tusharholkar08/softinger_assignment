import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Authentication/Views/forget_password2.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {


  TextEditingController mobileNumberText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Spacer(),
          SizedBox(
                height: MediaQuery.of(context).size.height < 1000 ? 150 : 160,
              ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Forget Password",
              style: TextStyle(
                    color: Colors.black,fontSize: 25,fontWeight: FontWeight.w900
              ),
            ),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height < 1000 ? 40 : 50,
              ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: const Text(
              "Your Mobile Number",
              style: TextStyle(
                    color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              height: 60,
              // alignment: Alignment.,
              decoration: BoxDecoration(
                color: Colors.white, // White background
                borderRadius: BorderRadius.circular(25), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    blurRadius: 10, // Softness of shadow
                    spreadRadius: 1, // Size of shadow
                    offset: const Offset(0, 8), // Shadow position
                  ),
                ],
              ),
              child: TextField(
                controller: mobileNumberText,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                hintText: '+91 ***********',
                border: InputBorder.none, // No default underline
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const LoginScreen1()),
                    // );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ForgetPassword2()
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 45,
                        width: 180,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 94, 171),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          const Spacer()
        ],
      ),
    );
  }
}