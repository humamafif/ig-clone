import 'package:flutter/material.dart';

class InputLayout extends StatefulWidget {
  const InputLayout({super.key});

  @override
  State<InputLayout> createState() => _InputLayoutState();
}

class _InputLayoutState extends State<InputLayout> {
  String nama = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nama",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              onChanged: (value) {
                nama = value;
                setState(() {});
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                // hintText: "Nama",
                filled: true,
                fillColor: Colors.amber,
                label: Text("Nama"),
              ),
            ),
          ),
          Text("$nama"),
        ],
      ),
    );
  }
}
