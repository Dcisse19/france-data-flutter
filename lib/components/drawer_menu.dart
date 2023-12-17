import 'package:flutter/material.dart';
import 'package:flutter_examen1/pages/home_page.dart';
import 'package:flutter_examen1/pages/regions_page.dart';
import 'package:flutter_examen1/pages/settings_page.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey[200],
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Text>[
              Text("France Data",
                  style: TextStyle(color: Colors.white, fontSize: 28)),
              Text("Atlas de données françaises",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home, size: 26),
          title: const Text(
            'Accueil',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const HomePage(title: 'France Data')));
          },
        ),
        const SizedBox(height: 25),
        ListTile(
          leading: const Icon(Icons.map, size: 26),
          title: const Text(
            'Régions',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const RegionPage(title: 'Recherche par région')));
          },
        ),
        const SizedBox(height: 25),
        ListTile(
          leading: const Icon(Icons.settings, size: 26),
          title: const Text(
            'Paramètres',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SettingsPage(title: 'Paramètres')));
          },
        ),
      ]),
    );
  }
}
