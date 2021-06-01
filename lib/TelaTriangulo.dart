import 'package:flutter/material.dart';

class TelaTriangulo extends StatefulWidget {
  @override
  _TelaTrianguloState createState() => _TelaTrianguloState();
}

class _TelaTrianguloState extends State<TelaTriangulo> {

  String formula = "Área A = (b * h) / 2";
  double base, altura, area;

  TextEditingController baseController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();

  void calcular(){
    setState(() {

      base = double.parse(baseController.text);
      altura = double.parse(alturaController.text);
      area = (base*altura)/2;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF006680),
        title: Text("Área do Triângulo"),
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
                    child: Image.asset("imagens/triangulo.png"),
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        controller: baseController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Digite o valor da base do Triângulo (b)",
                            labelStyle: TextStyle(color: Color(0xFF006680), fontSize: 18)
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF006680), fontSize: 22),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        controller: alturaController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Digite o valor da altura do Triângulo (h)",
                            labelStyle: TextStyle(color: Color(0xFF006680), fontSize: 18)
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF006680), fontSize: 22),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                        color: Color(0xFF006680),
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
                    Text("Área A = ($base * $altura) / 2", style: TextStyle(color: Colors.grey, fontSize: 20),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child:
                    Text("Área A = $area", style: TextStyle(color: Color(0xFF006680), fontSize: 20),),
                  )
                ],
              ),
            )
        )
    );
  }
}
