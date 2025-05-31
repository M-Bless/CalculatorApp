import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalculatorButton({super.key,
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: SizedBox(

        height: 70,

        child: ElevatedButton(
          onPressed: () => callback(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(fillColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: EdgeInsets.all(2),
          ),
          child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                  fontSize: textSize,

              color: Color(textColor),
            ),
            ),
            maxLines: 1,
            textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
