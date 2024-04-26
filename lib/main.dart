import 'package:flutter/material.dart';

import 'package:valdez/pantallainicial.dart';

import 'package:valdez/pantalla1.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Pantallainicial(),
        "/pantalla1": (context) => Pantalla1(),
      }, //Fin rutas de páginas
    );
  } //Fin de Widgets
}

/*import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class  extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SadBoyz Valdez0422",
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Botones de Flutter"),

        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Boton presionado");
                },
                child: Text("Boton")),
                OutlineButton(onPressed: (){
                  print("Boton Marcado presionado");
                }, child: Text("Boton Marcado"))
              
            ],
          ),
        ),
      ),
    );
  }
}

class OutlineButton {
}*/
