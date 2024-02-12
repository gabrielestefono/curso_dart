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
          child: Column(children: [
            ElevatedButton(onPressed: onPressed(), child: const Text("Gerenciador de Hoteis")),
            ElevatedButton(onPressed: onPressed(), child: const Text("Gerenciador de Quartos")),
            ElevatedButton(onPressed: onPressed(), child: const Text("Gerenciador de Reservas")),
            ElevatedButton(onPressed: onPressed(), child: const Text("Gerenciador de Hospedes")),
          ]),
        ),
      ),
    );
  }
}