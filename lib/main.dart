import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int son = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >=33) {
        _counter = 0;
        son++;
      }
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter = 0;
      son = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[450],
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Image.asset("assets/tasbex.png"),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Tasbex dasturi",
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
        actions: [
          IconButton(
            onPressed: _incrementCounter2,
            icon: Icon(
              Icons.restart_alt,
              size: 50,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.darken,
              ),
              child: Image.asset(
                "assets/image.png",
                // width: double.infinity,
                height: double.infinity,

                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        "x$son",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$_counter',
                        style: TextStyle(fontSize: 50, color: Colors.black),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextButton(
                        onPressed: _incrementCounter,
                        child: Container(
                          width: 300,
                          height: 300,
                          child: Image.asset("assets/ras.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
