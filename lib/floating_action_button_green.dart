import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        this.pressed ? Icons.favorite : Icons.favorite_border,
      ),
      onPressed: onPressedFav,
    );
  }

  bool pressed = false;

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
         content: Text(
            this.pressed ? "Eliminado de Favoritos" : "Añadido a Favoritos",
          ),
      ),
    );
    setState(() {
      pressed = !this.pressed;
    });
  }
}