import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ozgormoSan = 0;
  void koshuu() {
    ozgormoSan++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        title: Text(
          'COUNTER APP',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 240,
              height: 45,
              child: Text(
                'san: $ozgormoSan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.blue[100],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ozgormoSan--;
                    setState(() {});
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: koshuu,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
