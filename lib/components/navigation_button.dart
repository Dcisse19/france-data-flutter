import 'package:flutter/material.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {super.key,
      required this.buttonLabel,
      required this.buttonIcon,
      required this.navigationPage});

  final String buttonLabel;
  final IconData buttonIcon;
  final Widget navigationPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigationPage));
      },
      icon: Icon(buttonIcon, size: 30),
      label: Text(
        buttonLabel,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey[200],
          elevation: 3,
          minimumSize: const Size(250, 55)),
    );
  }
}
