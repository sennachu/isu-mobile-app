import 'package:application_1/widgets/class.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(227, 242, 253, 1),
        title: Text("Dersler"),
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
        child: Expanded(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Header(title: "Pazartesi"),
                          Class(
                              date: "Mesleki İngilizce",
                              title: "Online UZEM, 17:40 - 19:20"),
                          Header(title: "Salı"),
                          Class(
                              date: "Mobil Programlamaya Giriş",
                              title: "TKZ208, 18:30 - 21:50"),
                          Header(title: "Çarşamba"),
                          Class(
                              date: "Nesneye Yönelik Programlama Temelleri",
                              title: "TKZ07, 18:30 - 21:50"),
                          Header(title: "Perşembe"),
                          Class(
                              date: "Veritabanı Sistemlerine Giriş",
                              title: "TKZ209, 17:40 - 20:10"),
                          Header(title: "Cuma"),
                          Class(
                              date: "Web Geliştirme Teknikleri",
                              title: "Online UZEM, 20:10 - 21:50"),
                          Header(title: "Cumartesi"),
                          Class(
                              date: "Bitirme Projesi 1",
                              title: "Online UZEM, 17:40 - 18:30"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
