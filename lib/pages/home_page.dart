import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/drawer_menu.dart';
import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/components/navigation_button.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

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
      body: Column(
        // agencement des sections du body en colonne
        children: <Widget>[
          const VideoHero(), // component affichant un Hero avec un background Video
          Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 7, 0, 7),
              color: Colors.blue[700],
              child: const Text(
                textAlign: TextAlign.left,
                "I. Nos Régions",
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  color: Colors.blueGrey[50],
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        textAlign: TextAlign.left,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec rutrum est, sed bibendum risus. Donec ac mauris lobortis, condimentum augue sit amet, pulvinar magna. Phasellus dignissim ut erat eu pulvinar. Ut at condimentum magna, viverra interdum leo. In magna odio, dictum iaculis lorem id, rutrum hendrerit neque. Aenean bibendum consectetur faucibus.",
                        style: TextStyle(fontSize: 16),
                      ),
                      NavigationButton(
                          buttonLabel: 'Rechercher par région',
                          buttonIcon: Icons.search,
                          navigationPage:
                              RegionPage(title: 'Recherche par région')),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce aliquet ante lorem, vitae ullamcorper lectus congue mattis. Aenean condimentum mi non turpis tincidunt, vel semper lacus pharetra.",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color.fromARGB(255, 103, 103, 103), fontSize: 13),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
