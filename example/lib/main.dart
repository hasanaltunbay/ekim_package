import 'package:ekim/ekim.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extensions Package"),
        backgroundColor: context.bgRandomColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "text".helloText.toUpperCaseFirstLetter(),
                  style: TextStyle()
                      .bold
                      .italic
                      .withSize(18)
                      .withColor(Colors.red),
                ),
                Text(
                  "text".helloText.reverse(),
                  style: TextStyle().bold.withSize(18),
                ),
              ],
            ),
            Padding(
              padding: context.paddingAll(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text("Hello World"),
                  ).containerStyle(
                      color: Colors.yellow,
                      width: 120,
                      height: 100,
                      borderColor: Colors.blue,
                      borderWidth: 2,
                      borderRadius: 10),
                  Container(
                    child: Text("Hello World"),
                  ).containerStyle(width: 120, height: 100),
                ],
              ),
            ),
            Padding(
              padding: context.paddingAll(8),
              child: Container(
                child: Text("Hello World"),
              ).containerStyle(
                  color: Colors.blue,
                  borderWidth: 2,
                  width: context.width / 3,
                  height: context.height / 5),
            ),
            Image.network(
                    "https://plus.unsplash.com/premium_photo-1667511508039-845de3303536?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    width: context.height / 5)
                .leftRotation,
            ElevatedButton(onPressed: () {}, child: Text("Send"))
                .elevatedButtonStyle(
              backgroundColor: Colors.orange,
              borderRadius: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
