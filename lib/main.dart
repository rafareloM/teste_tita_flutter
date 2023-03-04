import 'package:flutter/material.dart';
import 'package:teste_tita/components/color_button.dart';
import 'package:teste_tita/constants.dart';
import 'package:teste_tita/views/color_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[100],
        title: const Text('TiTa Therapy'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ColorButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ColorPage(
                            colorName: 'Azul',
                            color: Colors.blueAccent,
                            uri: Constants.blueUrl),
                      ));
                },
                color: Colors.blueAccent,
                colorName: 'Azul'),
            ColorButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ColorPage(
                            colorName: 'Vermelho',
                            color: Colors.redAccent,
                            uri: Constants.redUrl),
                      ));
                },
                color: Colors.redAccent,
                colorName: 'Vermelho'),
            ColorButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ColorPage(
                            colorName: 'Amarelo',
                            color: Colors.amberAccent,
                            uri: Constants.yellowUrl),
                      ));
                },
                color: Colors.amberAccent,
                colorName: 'Amarelo'),
            ColorButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColorPage(
                            colorName: 'Verde',
                            color: Colors.green[800]!,
                            uri: Constants.greenUrl),
                      ));
                },
                color: Colors.green[800]!,
                colorName: 'Verde'),
          ],
        ),
      ),
    );
  }
}
