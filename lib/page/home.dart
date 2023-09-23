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
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 8.0),
                child: Icon(
                  Icons.language,
                  color: Color(0x7A7A7A7A),
                  size: 30,
                ),
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
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "images/cocan.png",
                        width: 150,
                      ),
                      Container(
                          width: 2,
                          height: 70,
                          decoration: BoxDecoration(border: Border.all())),
                      Image.asset("images/caf.png")
                    ]),
                const SizedBox(height: 20),
                const Text("Organisateur officiel de la CAN 2023")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Suivant',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 102, 0, 1), fontSize: 20)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
