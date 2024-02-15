// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget{
  const PaginaInicial({super.key});

  onPressed() {
    // Meu código aqui
  }
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Desafio 10 - Rede de Hoteis'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  minimumSize: MaterialStateProperty.all<Size>(const Size(250, 50)),
                ),
                onPressed: onPressed(),
                child: const Text(
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                  "Gerenciador de Hoteis"
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  minimumSize: MaterialStateProperty.all<Size>(const Size(250, 50)),
                ),
                onPressed: onPressed(),
                child: const Text(
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                  "Gerenciador de Quartos"
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  minimumSize: MaterialStateProperty.all<Size>(const Size(250, 50)),
                ),
                onPressed: onPressed(),
                child: const Text(
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                  "Gerenciador de Reservas"
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  minimumSize: MaterialStateProperty.all<Size>(const Size(250, 50)),
                ),
                onPressed: onPressed(),
                child: const Text(
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                  "Gerenciador de Hospedes"
                )
              ),
            ),
          ]),
        ),
      ),
    );
  }
}