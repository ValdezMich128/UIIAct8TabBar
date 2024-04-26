import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla1 America", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff19425e),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Botón presionado");
              },
              child: Text("Botón",
                  style: TextStyle(fontSize: 40, color: Colors.white)),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff22a4ba)),
                overlayColor:
                    MaterialStateProperty.all<Color>(Color(0xff0c4e7a)),
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  print("Botón contarno presionado");
                },
                child: Text("Botón con contorno"),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xba05426b)),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Color(0xff154e7e);
                    }
                    return Color(0xff52bfe0);
                  }),
                  textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic);
                    }
                    return TextStyle();
                  }),
                )),
            TextButton(
              onPressed: () {
                print("Botón de texto presionado");
              },
              child: Text("Botón de texto"),
              style: TextButton.styleFrom(
                primary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print("Botón con icono presionado!");
              },
              icon: Icon(Icons.home),
              label: Text("Botón icono Casa", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  } //Fin widget
}
