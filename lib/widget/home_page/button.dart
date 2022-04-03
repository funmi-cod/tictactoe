import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import '../../constants.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? color;

  const Button(this.text, [this.color]);

  @override
  Widget build(BuildContext context) {
    // screen size
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height * 0.04),
      width: size.width * 0.3,
      height: size.height * 0.10,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, '/game'),
        style: TextButton.styleFrom(
          shape: text != 'settings'
              ? RoundedRectangleBorder(
            side: BorderSide(
              color: color!,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(100.0),
          )
              : null,
        ),
        child: Text(
          text,
          style: GoogleFonts.lato(fontSize: 20, color: kBorderColor, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}