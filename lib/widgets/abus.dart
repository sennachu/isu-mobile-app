import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class abus extends StatelessWidget {
  final String photo;
  final String name;
  final String title;
  const abus({
    super.key,
    required this.photo,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          width: 205,
          height: 205,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 120),
            border: Border.all(
              color: Color.fromARGB(255, 243, 240, 240),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    photo,
                    width: 200,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.raleway(
                      color: const Color.fromARGB(255, 165, 32, 32),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    name,
                    style: GoogleFonts.raleway(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
