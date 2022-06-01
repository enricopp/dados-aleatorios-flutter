// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text("Dados"),
        ),
        body: Dados(),
      ),
    ),
  );
}

class Dados extends StatefulWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numeroesquerdo = 2;
  int numerodireito = 1;

  void alterarFacesDosDados() {
    setState(() {
      numeroesquerdo = Random().nextInt(6) + 1;
      numerodireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image.asset('image/dado$numeroesquerdo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image.asset('image/dado$numerodireito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
