import 'package:flutter/material.dart';

void main() => runApp(MiOptica());

class MiOptica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Optica',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),

        //ruta de ventana
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/producto": (BuildContext context) => Producto(),
          "/contacto": (BuildContext context) => Contacto(),
        }, //fin de routes
        home: Inicio()); //Fin de Material
  } //Fin de Widget
} //Fin clase de MiOptica

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Optica"),
      ),
      body: Center(
        child: Text("Seccion Empresa"),
      ),
    ); //Fin de Scaffold
  } //Fin de Widget
} //Fin de empresa

class Producto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Producto"),
      ),
      body: Center(
        child: Text("Seccion Productos"),
      ),
    ); //Fin de Scaffold
  } //Fin de Widget
} //Fin de empresa

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Contacto"),
      ),
      body: Center(
        child: Text("Seccion Contacto"),
      ),
    ); //Fin de Scaffold
  } //Fin de Widget
} //Fin de empresa

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/deyrajimenez/MisImagenes25/main/lensabl-0GfPlommtxM-unsplash.jpg"), alignment: Alignment.topCenter),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(60),
                      child: RaisedButton(
                        color: Colors.pink[100],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/inicio");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              "EMPRESA",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                            ),
                          ), //Center
                        ), //Dimension
                      ),
                    ) //Padding
                  ],
                ), //Fin columna interna
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(60),
                      child: RaisedButton(
                        color: Colors.pink[100],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/empresa");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              "INICIO",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.pink[100],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/producto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              "PRODUCTOS",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                            ),
                          ), //Center
                        ), //Dimension
                      ),
                    ) //Padding
                  ],
                ), //Fin columna interna
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.pink[100],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              "CONTACTO",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ), //Fin de Container
    );
  }
}
