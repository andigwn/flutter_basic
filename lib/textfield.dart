import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Textfield Example",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView(padding: const EdgeInsets.all(16), children: [
          TextField(
            controller: emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passwordC,
            autocorrect: false,
            obscureText: isHidden,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Password",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                print("Login Dengan :");
                print("Email : ${emailC.text}");
                print("Password : ${passwordC.text}");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 106, 104, 239),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ))
        ]));
  }
}
