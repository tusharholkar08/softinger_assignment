import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Home/Views/adding1.dart';
import 'package:softinger_project_app/Screens/Home/Views/edit_case.dart';

import 'bottom_navBar.dart';

class OpenCase extends StatefulWidget {
  const OpenCase({super.key});

  @override
  State<OpenCase> createState() => _OpenCaseState();
}

class _OpenCaseState extends State<OpenCase> {

  bool isCloseCaseChecked = false;
  bool isEditCaseChecked = false;



  void _navigate() {
    if (isCloseCaseChecked) {
      // Navigator.pushReplacement(
      // context,
      // MaterialPageRoute(builder: (context) =>  Adding1()),
      // );// Navigate to Adding Page
    } else if (isEditCaseChecked) {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EditCase()),
       ); // Navigate to EditCase Page
    }
  }


  // void onCheckboxChanged(bool? value) {

  //   setState(() {
  //     isEditCaseChecked = value ?? false;
  //   });

  //   if (isEditCaseChecked) {
  //     Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const EditCase()),
  //   );
  //   }
  // }

  int _selectedIndex = 3; // Adjust this index based on where Adding1 fits in your navigation

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigation logic based on the selected index
    if (index == 0) {
      Navigator.pop(context); // Go back to HomePage
    }
    // You can add more cases if needed for additional screens.
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textScale = MediaQuery.textScaleFactorOf(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
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
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: MediaQuery.of(context).size.width < 400
                              ? 1.1
                              : 1.3,
                          child: Checkbox(
                            value: isCloseCaseChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isCloseCaseChecked = value!;
                                isEditCaseChecked = false;
                              });
                            },
                            activeColor: Colors.blue,
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: _navigate,
                          child: const Text(
                            "Close Case",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: MediaQuery.of(context).size.width < 400
                              ? 1.1
                              : 1.3,
                          child: Checkbox(
                            value: isEditCaseChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isEditCaseChecked = value!;
                                isCloseCaseChecked = false;
                              });
                            },
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: _navigate,
                          child: const Text(
                            "Edit Case",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Table(
                border:
                    TableBorder.all(color: Color.fromARGB(255, 130, 130, 130)),
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(2),
                },
                children: [
                  _buildTableRow("District", ""),
                  _buildTableRow("Taluka", ""),
                  _buildTableRow("Village", ""),
                  _buildTableRow("Reporting Officer", ""),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Text(
                  "Evidence Gallery",
                  style: TextStyle(fontSize: textScale * 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/pic/tree.jpg")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/pic/tree.jpg")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/pic/tree.jpg")),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/pic/tree.jpg")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/pic/tree.jpg")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/pic/tree.jpg")),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Text(
                  "Comments",
                  style: TextStyle(fontSize: textScale * 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(fontSize: textScale * 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality here
          Navigator.pop(context);
        },
        backgroundColor: const Color.fromARGB(255, 255, 94, 0),
        shape: const CircleBorder(),
        child: const Icon(Icons.subdirectory_arrow_left_rounded, size: 28, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  TableRow _buildTableRow(String title, String detail) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 17)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(detail),
        ),
      ],
    );
  }
}