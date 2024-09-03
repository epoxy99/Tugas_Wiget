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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Aplikasi Berita",
            style: TextStyle(color: const Color.fromARGB(255, 251, 251, 251)),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  focusNode: FocusNode(),
                  decoration: InputDecoration(
                    hintText: 'Cari berita...',
                    prefixIcon: Icon(Icons.search),
                    fillColor: const Color.fromARGB(255, 240, 235, 235),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 181, 175, 175)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 57, 59, 60),
                          width: 2.0), // Change the color and width as needed
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Berita Terbaru',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Ekonomi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Kesehatan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Politik',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/demo.jpeg',
                        width: 370.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 150,
                      child: Container(
                        decoration: ShapeDecoration(
                            color: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Breaking News',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/demo_ojol.jpeg',
                          width: 370.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 150,
                        child: Container(
                          decoration: ShapeDecoration(
                              color: Colors.black54,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            'Demo Ojol 2024',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Berita Terkait',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/images/demo.jpeg'),
                                Container(
                                  child: Text("Demo di Gedung DPR"),
                                  width: 100,
                                  height: 100,
                                  decoration: ShapeDecoration(
                                      color: const Color.fromARGB(
                                          255, 168, 153, 101),
                                      shape: RoundedRectangleBorder()),
                                )
                              ],
                            ),
                            width: 350,
                            height: 100,
                            decoration: ShapeDecoration(
                                color: const Color(0x87E0DBDB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: ShapeDecoration(
                                color: const Color(0x87E0DBDB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(),
                            width: 350,
                            height: 100,
                            decoration: ShapeDecoration(
                                color: const Color(0x87E0DBDB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: ShapeDecoration(
                                color: const Color(0x87E0DBDB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 260,
                            height: 100,
                            decoration: ShapeDecoration(
                                color: const Color(0x87E0DBDB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
