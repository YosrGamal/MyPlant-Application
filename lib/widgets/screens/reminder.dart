import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 350, left: 50, right: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s1,
                    onChanged: (bool value) {
                      setState(() {
                        s1 = value;
                      });
                    },
                    title: Text(
                      'Water',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s2,
                    onChanged: (bool value) {
                      setState(() {
                        s2 = value;
                      });
                    },
                    title: Text(
                      'Prune',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s3,
                    onChanged: (bool value) {
                      setState(() {
                        s3 = value;
                      });
                    },
                    title: Text(
                      'Mist',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s4,
                    onChanged: (bool value) {
                      setState(() {
                        s4 = value;
                      });
                    },
                    title: Text(
                      'Fertilizer',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 220),
            padding: const EdgeInsets.only(left: 45, right: 45),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 251, 252, 251),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                'Spider Plant',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 40, 65, 48)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(60),
            height: 180,
            width: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Plant down left.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 280),
            padding: const EdgeInsets.only(left: 35, right: 35),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color.fromARGB(255, 251, 252, 251),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: const Text(
                'Reminder',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 60, 100, 73)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 362),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/water.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 420),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/prune.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 474),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/mist.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 530),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/fertilizer.png"),
                  fit: BoxFit.contain),
            ),
          ),
        ]),
      ),
    );
  }
}






