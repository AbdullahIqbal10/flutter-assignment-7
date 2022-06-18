import 'package:calculator_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Calculator App",
        home: Scaffold(
          backgroundColor: Color(0xff283637),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 12),
                child: Text(_history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 24),
                      color: Color(0xFF545F61),
                    )),
                alignment: Alignment(1, 1),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Text(_expression,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 48),
                      color: Colors.white,
                    )),
                alignment: Alignment(1, 1),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: allClear,
                    text: 'AC',
                    fillColor: Color(0xFF6c807f),
                  ),
                  Button(
                    callback: clear,
                    text: 'C',
                    fillColor: Color(0xFF6c807f),
                  ),
                  Button(
                    textColor: Color(0xFF65BDAC),
                    text: '%',
                    fillColor: Color(0xFFFFFFFF),
                    callback: numClick,
                  ),
                  Button(
                    textColor: Color(0xFF65BDAC),
                    text: '/',
                    fillColor: Color(0xFFFFFFFF),
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: numClick,
                    text: '7',
                  ),
                  Button(
                    callback: numClick,
                    text: '8',
                  ),
                  Button(
                    callback: numClick,
                    text: '9',
                  ),
                  Button(
                    callback: numClick,
                    textColor: Color(0xFF65BDAC),
                    text: '*',
                    fillColor: Color(0xFFFFFFFF),
                    textSize: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: numClick,
                    text: '4',
                  ),
                  Button(
                    callback: numClick,
                    text: '5',
                  ),
                  Button(
                    callback: numClick,
                    text: '6',
                  ),
                  Button(
                    callback: numClick,
                    textColor: Color(0xFF65BDAC),
                    text: '-',
                    fillColor: Color(0xFFFFFFFF),
                    textSize: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: numClick,
                    text: '1',
                  ),
                  Button(
                    callback: numClick,
                    text: '2',
                  ),
                  Button(
                    callback: numClick,
                    text: '3',
                  ),
                  Button(
                    callback: numClick,
                    text: '+',
                    fillColor: Color(0xFFFFFFFF),
                    textColor: Color(0xFF65BDAC),
                    textSize: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: numClick,
                    text: '.',
                  ),
                  Button(
                    callback: numClick,
                    text: '0',
                  ),
                  Button(
                    callback: numClick,
                    text: '00',
                    textSize: 20,
                  ),
                  Button(
                    callback: evaluate,
                    textColor: Color(0xFF65BDAC),
                    text: '=',
                    fillColor: Color(0xFFFFFFFF),
                    textSize: 25,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
