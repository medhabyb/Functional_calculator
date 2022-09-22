import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';
import 'Widget/cal_button.dart';

void main() {
  runApp( Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstn;
  late int secondn;
  late String history ='';
  late String textd = '';
  late String res;
  late String op;
  void btnOnClick(String btnVal)
  {
    print (btnVal);
    if (btnVal == 'C')
      {
        textd = '';
        firstn =0;
        secondn = 0;
        res = '';
      }
    else if (btnVal == 'AC')
      {
        textd = '';
        firstn =0;
        secondn = 0;
        res = '';
        history = '';
      }

    else if (btnVal == '+' || btnVal == '-' || btnVal == 'X' || btnVal == '/')
      {
        firstn = int.parse(textd);
        res = '';
        op = btnVal;
        history = firstn.toString() + op.toString() ;

      }

    else if(btnVal == '+/-')
      {
        if (textd[0] != '-')
          {
            res = '-' + textd;
          }
        else{
         res = textd.substring(1);
        }
      }

    else if(btnVal == '<')
      {
       res = textd.substring(0,textd.length -1);
      }
    else if (btnVal == '=')
      {
        secondn = int.parse(textd);
        if (op == "+")
          {
            res = (firstn + secondn).toString();
            history = firstn.toString() + op.toString() + secondn.toString();
          }
        if (op == "-")
        {
          res = (firstn - secondn).toString();
          history = firstn.toString() + op.toString() + secondn.toString();
        }
        if (op == "X")
        {
          res = (firstn * secondn).toString();
          history = firstn.toString() + op.toString() + secondn.toString();
        }
        if (op == "/")
        {
          res = (firstn / secondn).toString();
          history = firstn.toString() + op.toString() + secondn.toString();
        }
      }
    else

      {
        res = int.parse(textd + btnVal).toString();
      }

    setState(() {
      textd = res;
    });


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcualtor',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Color(0xFF28527a),
        appBar: AppBar(
          title: Text('Flutter Calculator'),

        ),
        body: Container(
          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Center(
            child:Column(
              
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Container(
                  child:
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(history, style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0x66FFFFFF),
                      ),
                    ),
                    ),
                  ),
                  alignment: Alignment(1.0,1.0),
                ),
                Container(
                 child:
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(textd, style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    ),
                  ),
                  alignment: Alignment(1.0,1.0),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                CalButon(
                    text: 'AC',
                    fillcolor: 0xFF8ac4d0,
                    textc: 0xFF000000,
                    textsize: 20,
                    callb: btnOnClick,),
                  CalButon(text: 'C',
                      fillcolor: 0xFF8ac4d0,
                      textc: 0xFF000000,
                      textsize: 20,
                    callb: btnOnClick,),
                  CalButon(text: '<',
                      fillcolor: 0xFFf4d160,
                      textc: 0xFF000000,
                      textsize: 20,
                    callb: btnOnClick,),
                  CalButon(text: '/',
                      fillcolor: 0xFFf4d160,
                      textc: 0xFF000000,
                      textsize: 20,
                    callb: btnOnClick,)

              ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    CalButon(text: '9',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                        callb: btnOnClick,
                    ),
                    CalButon(text: '8',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '7',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: 'X',
                        fillcolor: 0xFFf4d160,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,)

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    CalButon(text: '6',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '5',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '4',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '-',
                        fillcolor: 0xFFf4d160,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,)

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    CalButon(text: '3',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '2',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '1',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '+',
                        fillcolor: 0xFFf4d160,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,)

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    CalButon(text: '+/-',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '0',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '00',
                        fillcolor: 0xFF8ac4d0,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,),
                    CalButon(text: '=',
                        fillcolor: 0xFFf4d160,
                        textc: 0xFF000000,
                        textsize: 20,
                      callb: btnOnClick,)

                  ],
                ),


            ],)
          ),
        ),

      ),

    );

  }
}


