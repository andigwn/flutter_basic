import 'package:flutter/material.dart';

class ButtomNavigationBarExample extends StatefulWidget {
  const ButtomNavigationBarExample({super.key});

  @override
  State<ButtomNavigationBarExample> createState() =>
      _ButtomNavigationBarExampleState();
}

class _ButtomNavigationBarExampleState
    extends State<ButtomNavigationBarExample> {
  late int index;
  final List<Widget> screens = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Cart Screen')),
    const Center(child: Text('Profile Screen')),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttom Navigation Bar"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          backgroundColor: Colors.grey,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ]),
    );
  }
}
