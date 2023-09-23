import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? dropdownvalue = 'FRA';

  var items = ['FRA', 'ANG'];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ball_background.png"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(children: [
          const Icon(
            Icons.language,
            color: Color(0x7A7A7A7A),
            size: 30,
          ),
          const SizedBox(width: 10),
          DropdownButton(
            value: dropdownvalue,
            icon: const Icon(Icons.arrow_drop_down_sharp, size: 30),
            items: items.map((items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue;
              });
            },
          ),
        ]),
      ),
    );
  }
}
