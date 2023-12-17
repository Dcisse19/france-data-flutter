import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/drawer_menu.dart';
import 'package:flutter_examen1/components/navigation_button.dart';
import 'package:flutter_examen1/pages/home_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(176, 190, 197, 1),
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Page en construction",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              NavigationButton(
                  buttonLabel: "Retour à l'accueil",
                  buttonIcon: Icons.home,
                  navigationPage: HomePage(title: 'France Data'))
            ],
          )),
    );
  }
}
