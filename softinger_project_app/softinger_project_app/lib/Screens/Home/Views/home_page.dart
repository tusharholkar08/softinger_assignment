import 'package:flutter/material.dart';
import 'package:softinger_project_app/Screens/Home/Views/adding.dart';

import 'adding1.dart';
import 'bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isDropdownOpenList = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Adding()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 255, 94, 0),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, size: 28, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08, vertical: 10),
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
                  Flexible(
                    child: Text(
                      "👋 Good Morning Ashish Patil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  CircleAvatar(radius: screenWidth * 0.06, backgroundColor: Colors.white),
                ],
              ),
            ),

            SizedBox(height: screenHeight * 0.03),

            Row(
              children: [
                Image.asset("assets/icons/pngegg.png", height: screenWidth * 0.25),
                const Spacer(),
                Image.asset("assets/icons/digital_india_logo.svg.png", height: screenWidth * 0.15),
              ],
            ),

            SizedBox(height: screenHeight * 0.03),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Cases",
                      suffixIcon: const Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.015, horizontal: screenWidth * 0.04),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.edit_road, color: Colors.white),
                        SizedBox(width: 8),
                        Text("Sort by", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.02),

            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.02),
                    padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.015, horizontal: screenWidth * 0.04),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                "District - Taluka - Village - DDMMYYYY",
                                style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.black87),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isDropdownOpenList[index] = !isDropdownOpenList[index];
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(screenWidth * 0.015),
                                decoration: BoxDecoration(
                                  color: isDropdownOpenList[index]
                                      ? const Color.fromARGB(255, 255, 94, 0)
                                      : const Color.fromARGB(255, 21, 102, 168),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  isDropdownOpenList[index]
                                      ? Icons.keyboard_arrow_down_sharp
                                      : Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: screenWidth * 0.06,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (isDropdownOpenList[index])
                          Container(
                            margin: EdgeInsets.only(left: screenWidth * 0.4, top: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1.0),
                              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
                            ),
                            child: Column(
                              children: const [
                                ListTile(title: Text("Open Cases", style: TextStyle(fontSize: 14)),
                                    trailing: Icon(Icons.arrow_forward_ios, size: 15)),
                                ListTile(title: Text("Closed Cases", style: TextStyle(fontSize: 14)),
                                    trailing: Icon(Icons.arrow_forward_ios, size: 15)),
                              ],
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
