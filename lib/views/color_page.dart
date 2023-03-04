import 'package:flutter/material.dart';
import 'package:teste_tita/main.dart';

class ColorPage extends StatelessWidget {
  final String colorName;

  final Color color;

  final String uri;

  const ColorPage({
    super.key,
    required this.colorName,
    required this.color,
    required this.uri,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[100],
        leading: IconButton(
            style: const ButtonStyle().copyWith(
              backgroundColor: MaterialStatePropertyAll(Colors.amber[50]),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Voltar'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
                            ),
                            (route) => false,
                          );
                        },
                        child: const Text("Sim")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Não"))
                  ],
                  content: const SizedBox(
                    child: Text('Tem certeza que deseja voltar?'),
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          colorName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: double.maxFinite,
          child: Image.network(
            uri,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
