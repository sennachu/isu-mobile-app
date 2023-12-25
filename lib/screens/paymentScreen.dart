import 'package:application_1/widgets/header.dart';
import 'package:flutter/material.dart';
import '../widgets/tables.dart';

class paymentScreen extends StatefulWidget {
  const paymentScreen({super.key});

  @override
  State<paymentScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(227, 242, 253, 1),
        title: Text("Ödeme Planı"),
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
                          Header(title: "1. Taksit"),
                          tables(
                            date: "21.06.2023",
                            name: "Ödenen",
                            title: "6,624.75 ₺",
                          ),
                          Header(title: "2. Taksit"),
                          tables(
                            date: "21.07.2023",
                            name: "Ödenen",
                            title: "6,624.75 ₺",
                          ),
                          Header(title: "3. Taksit"),
                          tables(
                            date: "21.08.2023",
                            name: "Ödenen",
                            title: "6,624.75 ₺",
                          ),
                          Header(title: "4. Taksit"),
                          tables(
                            date: "21.09.2023",
                            name: "Ödenen",
                            title: "6,624.75 ₺",
                          ),
                          Header(title: "5. Taksit"),
                          tables(
                            date: "21.10.2023",
                            name: "Ödenen",
                            title: "6,624.75 ₺",
                          ),
                          Header(title: "6. Taksit"),
                          tables(
                            date: "21.11.2023",
                            name: "Ödenen",
                            title: "0 ₺",
                          ),
                          Header(title: "7. Taksit"),
                          tables(
                            date: "21.12.2023",
                            name: "Ödenen",
                            title: "0 ₺",
                          ),
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
