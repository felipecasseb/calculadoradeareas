import 'package:flutter/material.dart';

class TelaCirculo extends StatefulWidget {
  @override
  _TelaCirculoState createState() => _TelaCirculoState();
}

class _TelaCirculoState extends State<TelaCirculo> {

  String formula = "Área A = Pi * (r * r)";

  double raio, area, pi;
  TextEditingController raioController = new TextEditingController();

  void calcular(){
    setState(() {

      pi = 3.14;
      raio = double.parse(raioController.text);
      area = pi * (raio*raio);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA02C5A),
        title: Text("Área do Círculo"),
      ),
        body: SingleChildScrollView(
            child: Container(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "A área do triângulo pode ser calculada através das medidas da base e da altura da figura, sendo expressa pela fórmula: A = b*h/2 Onde, A = Área, b = base, h = altura ",
                      style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Image.asset("imagens/circulo.png"),
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        controller: raioController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Digite o valor do raio do círculo (r)",
                            labelStyle: TextStyle(color: Color(0xFFA02C5A), fontSize: 18)
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFFA02C5A), fontSize: 22),
                      )
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                        color: Color(0xFFA02C5A),
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
                    Text("Área A = 3.14 * ($raio * $raio)", style: TextStyle(color: Colors.grey, fontSize: 20),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child:
                    Text("Área A = $area", style: TextStyle(color: Color(0xFFA02C5A), fontSize: 20),),
                  )
                ],
              ),
            )
        )
    );
  }
}
