import 'package:flutter/material.dart';

class Incrrement extends StatefulWidget {
  const Incrrement({super.key});

  @override
  State<Incrrement> createState() => _IncrrementState();
}

class _IncrrementState extends State<Incrrement> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Increment"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$nilai",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai--;
                      });
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai++;
                      });
                    },
                    child: const Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
