import 'package:flutter/material.dart';

import 'bottom_navBar.dart';

class EditCase extends StatefulWidget {
  const EditCase({super.key});

  @override
  State<EditCase> createState() => _EditCaseState();
}

class _EditCaseState extends State<EditCase> {

  int _selectedIndex = 4; // Adjust this index based on where Adding1 fits in your navigation

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
        scrollDirection: Axis.vertical,
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
                    Text(
                      "👋 Good Morning Ashish Patil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textScale * 16,
                        fontWeight: FontWeight.bold,
                      ),
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
              SizedBox(height: screenHeight * 0.04),
              Table(
                border: TableBorder.all(color: const Color.fromARGB(255, 130, 130, 130)),
                columnWidths: {
                  0: const FlexColumnWidth(2),
                  1: const FlexColumnWidth(2),
                },
                children: [
                  _buildTableRow("District", ""),
                  _buildTableRow("Taluka", ""),
                  _buildTableRow("Village", ""),
                  _buildTableRow("Reporting Officer", ""),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Evidence Gallery",
                    style: TextStyle(fontSize: textScale * 20, fontWeight: FontWeight.w900),
                  ),
                  Icon(Icons.edit_square,color: Color.fromRGBO(255, 81, 0, 1),)
                ],
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
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Comments",
                    style: TextStyle(fontSize: textScale * 20, fontWeight: FontWeight.w900),
                  ),
                  Icon(Icons.edit_square,color: Color.fromRGBO(255, 81, 0, 1),)
                ],
              ),
              const SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(16),
                
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(detail),
            IconButton(
              icon: const Icon(Icons.edit_square, color: Color.fromRGBO(255, 81, 0, 1)),
              onPressed: () {
                // Add edit functionality here
              },
            ),
          ],
        ),
      ],
    );
  }


}