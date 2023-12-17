import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/drawer_menu.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(176, 190, 197, 1),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: false,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey[50],
          child: const Center(
            child: Text(
              "Page en construction",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
