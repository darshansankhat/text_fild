import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  TextEditingController txtname = TextEditingController();
  String name = "";
  List l1 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Name App",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(),
                label: Text("Enter Name "),
                prefixIcon: Icon(Icons.people_alt_outlined),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      name = txtname.text;
                      l1.add(name);
                      print(l1);
                    });
                  },
                  child: Icon(Icons.send_and_archive),
                ),
              ),
            ),
            Column(
              children: l1.asMap().entries.map((e) => Hello(l1[e.key])).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget Hello(String name) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          height: 50,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            "$name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
