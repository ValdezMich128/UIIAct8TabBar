import 'package:flutter/material.dart';

//PantallaInicial_0967
//
class Pantallainicial extends StatelessWidget {
  const Pantallainicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SadBoyz Valdez"),
        backgroundColor: Color(0xff0876a2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla1");
              },
              child: Text("Mover a Pantalla1"),
            ),
          ], //Niños Widgets
        ),
      ),
    );
  } //Fin de widget
}
