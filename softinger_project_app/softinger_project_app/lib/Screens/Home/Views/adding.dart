import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Home/Views/adding1.dart';
import 'package:softinger_project_app/Screens/Home/Views/bottom_navBar.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';



class Adding extends StatefulWidget {
  const Adding({super.key});

  @override
  State<Adding> createState() => _AddingState();
}

class _AddingState extends State<Adding> {

  String? selectedDesignation;
  List<String> districts = [
    "Mumbai", "Pune", "Nashik", "Nagpur", "Thane", "Aurangabad", "Solapur",
    "Amravati", "Kolhapur", "Satara", "Sangli", "Jalgaon", "Nanded", "Latur",
    "Ahmednagar", "Chandrapur", "Yavatmal", "Raigad", "Osmanabad", "Ratnagiri",
    "Bhandara", "Wardha", "Gondia", "Beed", "Parbhani", "Hingoli", "Washim",
    "Gadchiroli", "Sindhudurg", "Dhule", "Nandurbar"
  ];

  String? selectedTaluka;
  List<String> talukas = [
    "Haveli", "Maval", "Mulshi", "Junnar", "Shirur", "Baramati",
    "Indapur", "Daund", "Bhor", "Velhe", "Purandar", "Ambegaon", "Khed"
  ];

  String? selectedVillage;
  List<String> villages = [
    "Alandi", "Baner", "Bhugaon", "Chakan", "Hinjewadi", "Khadakwasla", "Kondhwa",
    "Loni Kalbhor", "Manjri", "Mulshi", "Narhe", "Pashan", "Pirangut", "Saswad",
    "Shirur", "Talegaon Dabhade", "Uruli Kanchan", "Vadgaon", "Wagholi", "Yavat"
  ];


  String selectedDate = "";

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  final ImagePicker _picker = ImagePicker();
  File? _image;

  // final ImagePicker _picker = ImagePicker();

  // Pick Image from Camera
  Future<void> _pickImageFromCamera(BuildContext context) async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _navigateToSecondPage(context, File(pickedFile.path));
    }
  }

  // Pick Image from Gallery
  Future<void> _pickImageFromGallery(BuildContext context) async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _navigateToSecondPage(context, File(pickedFile.path));
    }
  }

  // Navigate to Second Page with Image
  void _navigateToSecondPage(BuildContext context, File imageFile) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Adding1(image: imageFile)),
    );
  }



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 243, 243, 1),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08, vertical: screenHeight * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.04),
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
        
                Center(
              child: SizedBox(
                height: screenHeight * 0.15,
                child: Image.asset("assets/icons/pngegg.png"),
              ),
            ),
                SizedBox(height: screenHeight * 0.03),
                Container(
                child: const Text(
                  "District",
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
                    hint: const Text("Select District"),
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: districts.map((String designation) {
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
        
              SizedBox(height: screenHeight * 0.02),

                Container(
                child: const Text(
                  "Taluka",
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
                    value: selectedTaluka,
                    hint: const Text("Select Taluka"),
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: talukas.map((String designation) {
                      return DropdownMenuItem<String>(
                        value: designation,
                        child: Text(designation),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTaluka = newValue;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                child: const Text(
                  "Village",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                    value: selectedVillage,
                    hint: const Text("Select Village"),
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: villages.map((String village) {
                      return DropdownMenuItem<String>(
                        value: village,
                        child: Text(village),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedVillage = newValue;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                child: const Text(
                  "Date",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                child: GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        selectedDate =
                            "${pickedDate.day.toString().padLeft(2, '')}-${pickedDate.month.toString().padLeft(2, '')}-${pickedDate.year}";
                      });
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedDate.isEmpty
                            ? "Select Date (DD-MM-YYYY)"
                            : selectedDate,
                        style: const TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      const Icon(Icons.calendar_today, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => _pickImageFromCamera(context),
                    child: Icon(Icons.camera_alt, color: Colors.blue, size: 35),
                  ),
                  Text("Capture Image", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => _pickImageFromGallery(context),
                    child: Icon(Icons.photo_library, color: Colors.red, size: 35),
                  ),
                  Text("Select From Gallery", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                ],
              ),
            ],
          ),
            ]
          ),
        ),
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

      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
