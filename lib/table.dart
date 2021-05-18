import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Tableo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: PhotoView(
        imageProvider: NetworkImage(
          "https://i.ibb.co/YQLHXtZ/this-blood-glucose-chart-260nw-1425056237.webp",
        ),
      ),
    );
  }
}













        // child: DataTable(
        //   columns: [
        //     DataColumn(
        //         label: Text(
        //       "   ",
        //       style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        //     )),
        //     DataColumn(
        //         label: Text(
        //       "While Fasting",
        //       style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        //     )),
        //     DataColumn(
        //         label: Text(
        //       "After Eating",
        //       style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        //     )),
        //     DataColumn(
        //         label: Text(
        //       "2-3 Hrs After Eating",
        //       style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        //     )),
        //   ],
        //   rows: [
        //     DataRow(cells: [
        //       DataCell(Text("Normal",
        //           style:
        //               TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900))),
        //       DataCell(Text("80-100")),
        //       DataCell(Text("170-200")),
        //       DataCell(Text("120-140")),
        //     ]),
        //     DataRow(cells: [
        //       DataCell(Text("Impaired Glucose",
        //           style:
        //               TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900))),
        //       DataCell(Text("101-125")),
        //       DataCell(Text("190-230")),
        //       DataCell(Text("140-160")),
        //     ]),
        //     DataRow(cells: [
        //       DataCell(Text("Diabetic",
        //           style:
        //               TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900))),
        //       DataCell(Text("126+")),
        //       DataCell(Text("220-300")),
        //       DataCell(Text("200+")),
        //     ]),
        //   ],
        // ),