import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
 Color color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    super.key,
    this.color = const Color(0xFF332d2b),
    this.size = 20,
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: size,
      ),
    );
  }
}
