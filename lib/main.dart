import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        backgroundColor: Colors.white70, // Mengatur warna latar belakang
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 100,
                child: Image(
                  image: AssetImage('assets/Logo1.png'),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 400,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 175, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
                ),
                child: Text("Log In"),
              ),
              TextButton(
                onPressed: () {
                  // Tambahkan aksi ketika tombol "Lupa Password" ditekan
                },
                child: Text('Lupa Password ?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
