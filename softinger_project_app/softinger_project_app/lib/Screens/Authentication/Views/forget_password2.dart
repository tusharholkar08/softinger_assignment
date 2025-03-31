import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Authentication/Views/login_screen1.dart';

class ForgetPassword2 extends StatefulWidget {
  const ForgetPassword2({super.key});

  @override
  State<ForgetPassword2> createState() => _ForgetPassword2State();
}

class _ForgetPassword2State extends State<ForgetPassword2> {
  final _otpControllers = List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.12),
              const Center(
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                      color: Colors.black, fontSize: 23, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Center(
                child: Text(
                  "Enter the OTP sent to +91 ***********",
                  style: TextStyle(
                    color: Colors.black, fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "4 Digit OTP",
                  style: TextStyle(
                    color: Colors.black, fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _otpControllers.map((controller) {
                      int index = _otpControllers.indexOf(controller);
                      return SizedBox(
                        width: screenWidth * 0.15,
                        child: TextField(
                          controller: controller,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style: const TextStyle(fontSize: 15, color: Colors.white),
                          decoration: InputDecoration(
                            counterText: '',
                            filled: true,
                            fillColor: Color.fromRGBO(0, 78, 141, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty && index < 3) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.isEmpty && index > 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Resend",
                      style: TextStyle(
                          color: Color.fromRGBO(115, 115, 115, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen1()),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.3,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 78, 141, 1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
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
