import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    required this.text,
    this.height = 1.2,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,

      style: GoogleFonts.roboto(
        height: height,
        color: color,
        fontSize: size,
      ),
    );
  }
}





