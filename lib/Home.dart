import 'package:calc_areas/TelaCirculo.dart';
import 'package:calc_areas/TelaQuadrado.dart';
import 'package:calc_areas/TelaRetangulo.dart';
import 'package:calc_areas/TelaTriangulo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirQuadrado(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaQuadrado())
    );
  }

  void _abrirRetangulo(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaRetangulo())
    );
  }

  void _abrirTriangulo(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaTriangulo() )
    );
  }

  void _abrirCirculo(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaCirculo() )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("imagens/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirQuadrado,
                    child: Image.asset("imagens/btquadrado.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirRetangulo,
                    child: Image.asset("imagens/btretangulo.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirTriangulo,
                    child: Image.asset("imagens/bttriangulo.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirCirculo,
                    child: Image.asset("imagens/btcirculo.png"),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
