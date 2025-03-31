import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Authentication/Views/sign_up1.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  TextEditingController phoneNumberText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController confirmPasswordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.06),
              const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Text(
          "Your Name",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: TextField(
            controller: nameText,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              hintText: 'Enter your Name',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
          "Your Email",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: TextField(
            controller: emailText,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Enter your Email',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
          "Your Phone",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: TextField(
            controller: phoneNumberText,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              hintText: 'Enter your Phone',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
          "Password",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: TextField(
            controller: passwordText,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              hintText: 'Enter your Password',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
          "Confirm Password",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: TextField(
            controller: confirmPasswordText,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              hintText: 'Enter your Confirm Password',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              // SizedBox(height: screenHeight * 0.03),
              const SizedBox(
                width: 260,
                child: Text(
                  "Password should be alphanumeric with special characters",
                  style: TextStyle(
                    color: Color.fromRGBO(120, 120, 120, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp1()),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: screenWidth * 0.45,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 78, 141, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, TextInputType inputType) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: TextField(
            controller: controller,
            keyboardType: inputType,
            decoration: const InputDecoration(
              hintText: 'Enter your details',
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      ],
    );
  }
}
