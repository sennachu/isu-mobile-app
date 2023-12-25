import 'package:application_1/widgets/header.dart';
import 'package:application_1/widgets/tables.dart';
import 'package:flutter/material.dart';

class examsScreen extends StatefulWidget {
  const examsScreen({super.key});

  @override
  State<examsScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<examsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(227, 242, 253, 1),
        title: Text("Sınavlar"),
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
          ),
        ),
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
                              Header(title: "Güz Dönemi Sınav Sonuçları"),
                              tables(
                                date: "17.12.2023",
                                name: "Mobil Programlamaya Giriş",
                                title: "AA",
                              ),
                              tables(
                                date: "06.12.2023",
                                name: "Nesneye Yönelik Prog.",
                                title: "BB",
                              ),
                              tables(
                                date: "15.12.2023",
                                name: "Web Geliştirme Teknikleri",
                                title: "AB",
                              ),
                              tables(
                                date: "10.12.2023",
                                name: "Mesleki İngilizce",
                                title: "AA",
                              ),
                              tables(
                                date: "08.01.2024",
                                name: "Bitirme Projesi",
                                title: "",
                              ),
                              tables(
                                date: "13.12.2023",
                                name: "Veritabanı Sistemleri",
                                title: "CC",
                              ),
                            ],
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
