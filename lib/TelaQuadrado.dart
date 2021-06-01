import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaQuadrado extends StatefulWidget {
  @override
  _TelaQuadradoState createState() => _TelaQuadradoState();
}

class _TelaQuadradoState extends State<TelaQuadrado> {

  String formula = "Área A = L * L";
  double lado, area;
  TextEditingController ladoController = new TextEditingController();

  void calcular(){
    setState(() {
      lado = double.parse(ladoController.text);
      area = lado*lado;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFA500),
        title: Text("Área do Quadrado"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Para fazer o cálculo da área do quadrado é necessário o produto entre dois lados. Como o quadrado tem lados iguais, basta pegar a medida de um dos lados e elevar ao quadrado. Para a realização usamos a fórmula da área A =L*L, assim um de seus lados será lado (L) ",
                  style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset("imagens/quadrado.png"),
              ),
              Padding(
                  padding: EdgeInsets.all(16),
                child: TextField(
                  controller: ladoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Digite o valor do lado do quadrado",
                    labelStyle: TextStyle(color: Color(0xFFFFA500), fontSize: 18)
                  ),
                    textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFFFFA500), fontSize: 22),
                )
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(2),
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Color(0xFFFFA500),
                    onPressed: calcular,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Text("CALCULAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(16),
                child:
                Text(formula, style: TextStyle(color: Colors.grey, fontSize: 20),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1),
                child:
                Text("Área A = $lado * $lado", style: TextStyle(color: Colors.grey, fontSize: 20),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child:
                Text("Área A = $area", style: TextStyle(color: Color(0xFFFFA500), fontSize: 20),),
              )
            ],
          ),
        )
      )
    );
  }
}
