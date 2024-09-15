import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  final List data = [
    {
      "judul": "Pilihan Ke - 1",
      "data": 1,
    },
    {
      "judul": "Pilihan Ke - 2",
      "data": 2,
    },
    {
      "judul": "Pilihan Ke - 3",
      "data": 3,
    },
  ];
  late int dataAwal;
  @override
  void initState() {
    dataAwal = data[1]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: DropdownButton<int>(
              value: dataAwal,
              items: data
                  .map(
                    (e) => DropdownMenuItem(
                      value: e['data'] as int,
                      child: Text("${e['judul']}"),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  dataAwal = value!;
                });
              },
            )),
      ),
    );
  }
}
