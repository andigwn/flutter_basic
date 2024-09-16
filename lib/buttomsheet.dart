import 'package:flutter/material.dart';

class ButtomSheetExample extends StatefulWidget {
  const ButtomSheetExample({super.key});

  @override
  State<ButtomSheetExample> createState() => _ButtomSheetExampleState();
}

class _ButtomSheetExampleState extends State<ButtomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Buttom Sheet",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) => SizedBox(
                    height: 300,
                    child: ListView(children: [
                      ListTile(
                        onTap: () {
                          print("Klik Photo");
                        },
                        leading: const Icon(Icons.photo),
                        title: const Text("Photo"),
                      ),
                      ListTile(
                        onTap: () {
                          print("Klik Music");
                        },
                        leading: const Icon(Icons.music_note),
                        title: const Text("Music"),
                      ),
                      ListTile(
                        onTap: () {
                          print("Klik Video");
                        },
                        leading: const Icon(Icons.video_collection),
                        title: const Text("Video"),
                      ),
                      ListTile(
                        onTap: () {
                          print("Klik Share");
                        },
                        leading: const Icon(Icons.share),
                        title: const Text("Share"),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        leading: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cencel"),
                        ),
                      ),
                    ]),
                  ),
                );
              },
              child: const Text("Show Buttom Sheet")),
        ),
      ),
    );
  }
}
