import 'package:flutter/material.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {

  TextEditingController designation = TextEditingController();

  String? selectedDesignation;
  List<String> designations = ["Software Engineer", "Designer", "Project Manager", "Data Analyst", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height < 1000 ? 70 : 100,
              ),
            Container(
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height < 1000 ? 30 : 50,
              ),
            Container(
              child: const Text(
                "Your Designation",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              height: 60,
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
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedDesignation,
                  hint: const Text("Select Your Designation"),
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: designations.map((String designation) {
                    return DropdownMenuItem<String>(
                      value: designation,
                      child: Text(designation),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDesignation = newValue;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height < 1000 ? 30 : 50,
              ),
            GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SignUp1()),
              // );
            },
            child: Container(
              height: 45,
              width: 170,
              decoration: BoxDecoration(
                color:  Color(0xFF004A86),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,fontSize: 18
                  ),
                ),
              ),
            ),
                          ),
          ],
        ),
      ),
    );
  }
}