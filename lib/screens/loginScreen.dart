import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(227, 242, 253, 1),
        title: Text("Giriş Yap",
            style: GoogleFonts.raleway(textStyle: TextStyle(fontSize: 20))),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.1,
            0.4,
            0.6,
            0.9,
          ],
          colors: [
            Color.fromRGBO(227, 242, 253, 1),
            Color.fromRGBO(187, 222, 251, 1),
            Color.fromRGBO(144, 202, 249, 1),
            Color.fromRGBO(100, 181, 246, 1)
          ],
        )),
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Text(
                "Okul Numarası:",
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(10, 158, 158, 158),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Okul numaranızı giriniz...",
                      hintStyle: GoogleFonts.nunitoSans()),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Şifre:",
                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(10, 178, 177, 177),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Şifrenizi giriniz...",
                      hintStyle: GoogleFonts.nunitoSans()),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (Route<dynamic> route) => false);
                },
                child: Text(
                  "Giriş Yap",
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
