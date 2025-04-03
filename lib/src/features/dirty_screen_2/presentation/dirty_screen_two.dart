import 'package:flutter/material.dart';

class DirtyScreenTwo extends StatelessWidget {
  const DirtyScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #2"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             PlantBox(alphabet: 'A',),
             PlantBox(alphabet: 'B'),
             PlantBox(alphabet: 'C'),
             PlantBox(alphabet: 'D'),
             PlantBox(alphabet: 'E'),
          ]
        ),
      ),
    );
  }
}

class PlantBox extends StatelessWidget {
  final String alphabet;

  const PlantBox({
    super.key,
    required this.alphabet
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child:  Row(
        children: [
          const Icon(Icons.eco),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Box $alphabet',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
