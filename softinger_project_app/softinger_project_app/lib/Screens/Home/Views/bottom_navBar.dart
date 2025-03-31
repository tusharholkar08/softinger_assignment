import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 10,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home_filled,
                  color: selectedIndex == 0
                      ? Colors.blue.shade900
                      : Colors.grey,
                  size: 35),
              onPressed: () => onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.notification_add_sharp,
                  color: selectedIndex == 1
                      ? Colors.blue.shade900
                      : Colors.grey,
                  size: 35),
              onPressed: () => onItemTapped(1),
            ),
          ],
        ),
      ),
    );
  }
}
