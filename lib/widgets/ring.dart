import 'package:flutter/material.dart';

//Datatable için kullandığım kaynak https://api.flutter.dev/flutter/material/DataTable-class.html
//https://stackoverflow.com/questions/60644375/flutter-datatable-multiline-wrapping-and-centering

class ring extends StatelessWidget {
  const ring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 120),
        border: Border.all(
          color: Color.fromARGB(255, 243, 240, 240),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columnSpacing: 10, horizontalMargin: 5, columns: [
            DataColumn(
              label: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("Merter Metro Kalkış")],
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("Kazlıçeşme Marmaray Kalkış")],
                ),
              ),
            ),
          ], rows: [
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("09:00")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("09:15")],
                  ),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("10:15")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("10:00")],
                  ),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("11:00")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("-")],
                  ),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("12:00")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("12:00")],
                  ),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("13:30")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("13:00")],
                  ),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("-")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("14:00")],
                  ),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("15:30")],
                  ),
                ),
              ),
              DataCell(
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("15:30")],
                  ),
                ),
              ),
            ]),
          ])),
    );
  }
}
