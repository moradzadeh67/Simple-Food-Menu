import 'package:flutter/material.dart';


void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var hi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: wi,
        height: hi,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: wi,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 45),
                    child: Text(
                      'Today',
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30, top: 45),
                    child: Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              width: wi,
              height: hi * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/p8.jpg'),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      'Custom food list  for vegans',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(30)),
                      margin: EdgeInsets.only(right: 50, bottom: 50),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
//
//
  }
}
