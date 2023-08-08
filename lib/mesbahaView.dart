import 'package:flutter/material.dart';

class MesbahaScreen extends StatefulWidget {
  const MesbahaScreen({super.key});

  @override
  State<MesbahaScreen> createState() => _MesbahaScreenState();
}

class _MesbahaScreenState extends State<MesbahaScreen> {
  double _angle = 0;
  int numbetoftasbeha = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المسبحة"),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _angle = _angle + 1;
                    numbetoftasbeha++;
                    setState(() {});
                  },
                  child: Transform.rotate(
                      angle: _angle,
                      child: Image.asset(
                        "Assest/sabha.png",
                        width: 320,
                        fit: BoxFit.fill,
                      )),
                ),
                Column(
                  children: [
                    const Text(
                      "عدد التسبيحات",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$numbetoftasbeha",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Text("اضغط على المسبحة لبدء التسبيح",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
