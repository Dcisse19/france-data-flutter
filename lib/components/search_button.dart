import 'package:flutter/material.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const RegionPage(title: 'Region Page')));
      },
      icon: const Icon(Icons.search, semanticLabel: 'Aller à la page région'),
      label: const Text(
        "Rechercher Par Région",
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey[200],
        elevation: 3,
        minimumSize: const Size(250, 55)
      ),
    );
  }
}
