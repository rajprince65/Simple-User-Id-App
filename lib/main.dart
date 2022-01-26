import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text("Raj ID Card"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.topLeft,
        child: Column(
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                radius: 100.0,
                backgroundImage: AssetImage("assets/cartoonboy.png"),
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Name",
                style: TextStyle(
                  letterSpacing: 3.0,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Raj Shah",
                style: TextStyle(
                    letterSpacing: 3.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Current Raj Level",
                style: TextStyle(
                  letterSpacing: 3.0,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "$level",
                style: TextStyle(
                    letterSpacing: 3.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text("Rajshah6541@gmail.com"),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}
