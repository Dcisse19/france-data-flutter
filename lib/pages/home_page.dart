import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/components/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
              padding: const EdgeInsets.fromLTRB(20, 6, 0, 6),
              color: Colors.blue[700],
              child: const Text(
                textAlign: TextAlign.left,
                "I. Nos Régions",
                style: TextStyle(color: Colors.white, fontSize: 28),
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
                      SearchButton(),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce aliquet ante lorem, vitae ullamcorper lectus congue mattis. Aenean condimentum mi non turpis tincidunt, vel semper lacus pharetra.",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
