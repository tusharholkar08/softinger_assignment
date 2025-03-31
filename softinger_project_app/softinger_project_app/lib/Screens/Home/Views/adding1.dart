import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:softinger_project_app/Screens/Home/Views/open_case.dart';

import 'bottom_navbar.dart';
import 'close_case.dart';

class Adding1 extends StatefulWidget {

  final File image;

  Adding1({super.key,required this.image});

  // const Adding1({super.key});

  @override
  State<Adding1> createState() => _Adding1State();
}

class _Adding1State extends State<Adding1> {


late File _displayedImage;

  @override
  void initState() {
    super.initState();
    _displayedImage = widget.image;
  }

  
  TextEditingController mapText = TextEditingController();
  bool isCloseCaseChecked = false;
  bool isOpenCaseChecked = false;

  void onSubmit(BuildContext context) {
    if (isCloseCaseChecked) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CloseCase()),
      );
    } else if (isOpenCaseChecked) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OpenCase()),
      );
    } else {
      print("No option selected");
    }
  }

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pop(context);
    }
  }

  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double containerWidth = MediaQuery.of(context).size.width * 0.9; // 90% of screen width
    double containerHeight = containerWidth * (9 / 16); // Maintain 16:9 ratio

    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Container(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "👋 Good Morning Ashish Patil",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: screenWidth * 0.12,
                    height: screenWidth * 0.12,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(height: screenHeight * 0.03),
              Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // border: Border.all(color: Colors.grey, width: 2),
                image: DecorationImage(
                  image: FileImage(_displayedImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(5, (index) {
                  return SizedBox(
                    height: screenHeight * 0.05,
                    width: screenHeight *
                        0.1 *
                        (2 / 3), // Maintain 2:3 aspect ratio
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: _displayedImage != null
                          ? Image.file(_displayedImage!,
                              fit: BoxFit.cover) // Show selected image
                          : Image.asset("assets/pic/tree.jpg",
                              fit: BoxFit.cover), // Default image
                    ),
                  );
                }),
              ),

              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: const Text(
                  "Longitude & Latitude",
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 128, 128, 128), fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/pic/MapCropped.jpeg", width: screenWidth * 0.9),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: 8),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: TextField(
                  controller: mapText,
                  decoration: const InputDecoration(
                    hintText: 'Enter Text Here',
                    border: InputBorder.none,
                  ),
                ),
              ),
              // SizedBox(height: screenHeight * 0.02),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          value: isCloseCaseChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isCloseCaseChecked = value!;
                              isOpenCaseChecked = false;
                            });
                          },
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Text(
                        "Close Case",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromRGBO(79, 79, 79, 1)),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          value: isOpenCaseChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isOpenCaseChecked = value!;
                              isCloseCaseChecked = false;
                            });
                          },
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Text(
                        "Open Case",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromRGBO(79, 79, 79, 1)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              GestureDetector(
                onTap: () => onSubmit(context),
                child: Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 94, 171),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: const Color.fromARGB(255, 255, 94, 0),
        shape: const CircleBorder(),
        child: const Icon(Icons.subdirectory_arrow_left_rounded, size: 28, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
