import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer example")),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, 
        children: const[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Hello Ajil",
                style: TextStyle(color: Colors.white,fontSize: 22),

              ),
              
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),

              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("logout"),
              ),
          ],
        ),
      ),
      body: const Center(
        child: Text("swipe from left or tap icon"),
      ),
    );
  }
}
