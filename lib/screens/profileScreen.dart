import 'package:application_1/widgets/menuItem.dart';
import 'package:application_1/widgets/profileItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              profileItem(
                avatar: "assets/images/IMG_3205.JPG",
                name: "Sena Bezirkan",
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem(
                      title: "2. Sınıf",
                      icon: Icon(Icons.keyboard_arrow_right),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem(
                      title: "Okul Numaranız: 222016746",
                      icon: Icon(Icons.numbers),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem(
                      title: "Mail: 222016746@stu.istinye.edu.tr",
                      icon: Icon(Icons.mail),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem(
                      title: "Şifreniz: Sena12345@",
                      icon: Icon(Icons.key),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem(
                      title: "Danışmanınız: Sena Kaçar",
                      icon: Icon(Icons.person),
                      onTap: () {}),
                ],
              ),
              Divider(),
              SizedBox(
                height: 55,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    "Geri Dön...",
                    style: GoogleFonts.raleway(color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
