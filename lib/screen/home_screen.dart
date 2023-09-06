import 'package:flutter/material.dart';
import 'package:flutter_material_app/widget/about_section/about_section.dart';
import 'package:flutter_material_app/widget/home_section/home_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavigationBarIndex = 0;

  final List<Widget> _children = const [
    HomeSection(),
    AboutSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App'),
      ),
      body: _children[_bottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavigationBarIndex,
        onTap: (value) {
          _bottomNavigationBarIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'About',
            icon: Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
