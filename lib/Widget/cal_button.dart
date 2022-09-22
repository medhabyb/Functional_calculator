import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalButon extends StatelessWidget {
  final String text ;
  final int fillcolor;
  final int textc;
  final double textsize;
  final Function? callb;

  const CalButon({required this.text,  required this.fillcolor , required this.textc , required this.textsize ,  this.callb}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: SizedBox(
        height: 70,
        width: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child:Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textsize,

              )
          ),
          ),
          onPressed: () => callb!(text),
          color: Color(fillcolor),
          textColor: Color(textc),

        ),
      ),
    );
  }
}
