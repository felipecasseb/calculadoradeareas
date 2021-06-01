import 'package:flutter/material.dart';

class TelaRetangulo extends StatefulWidget {
  @override
  _TelaRetanguloState createState() => _TelaRetanguloState();
}

class _TelaRetanguloState extends State<TelaRetangulo> {

  String formula = "Área A = b * h";
  double base, altura, area;

  TextEditingController baseController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();

  void calcular(){

    setState(() {
      base = double.parse(baseController.text);
      altura = double.parse(alturaController.text);
      area = base*altura;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF008066),
        title: Text("Área do Retângulo"),
      ),
        body: SingleChildScrollView(
            child: Container(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "A área do retângulo corresponde ao produto (multiplicação) da medida da base pela altura da figura, sendo expressa pela fórmula: A = b*h Onde, A = Área, b = base, h = altura ",
                      style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Image.asset("imagens/retangulo.png"),
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        controller: baseController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Digite o valor da base do retângulo (b)",
                            labelStyle: TextStyle(color: Color(0xFF008066), fontSize: 18)
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF008066), fontSize: 22),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        controller: alturaController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Digite o valor da altura do retângulo (h)",
                            labelStyle: TextStyle(color: Color(0xFF008066), fontSize: 18)
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF008066), fontSize: 22),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                        color: Color(0xFF008066),
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
                    Text("Área A = $base * $altura", style: TextStyle(color: Colors.grey, fontSize: 20),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child:
                    Text("Área A = $area", style: TextStyle(color: Color(0xFF008066), fontSize: 20),),
                  )
                ],
              ),
            )
        )
    );
  }
}
