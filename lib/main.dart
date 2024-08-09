import 'package:flutter/material.dart';
import 'package:trytocode/Gredient_Container.dart';
import 'package:trytocode/styled_text.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'DESERACT',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 234, 106, 106),
              letterSpacing: 2.0,
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(128, 0, 0, 0),
                ),
              ],
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(56, 22, 78, 22),
                  Colors.deepOrange
                ])),
                child: Text(
                  'Option Services',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  // Handle the onTap event for Home
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Handle the onTap event for Settings
                },
              ),
            ],
          ),
        ),
        body: GradientContainer(
          child: const Center(
            child: StyledText('Hello, Flutter!'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
