import 'package:flutter/material.dart';

class DirtyScreenThree extends StatelessWidget {
  const DirtyScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #3"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AlertBox(alertNumber: 1),   
            AlertBox(alertNumber: 2),
            AlertBox(alertNumber: 3),
            AlertBox(alertNumber: 4),
            AlertBox(alertNumber: 5),
            AlertBox(alertNumber: 6),
            AlertBox(alertNumber: 7),       
            
          ],
        ),
      ),
    );
  }
}

class AlertBox extends StatelessWidget {
  final int alertNumber;

  const AlertBox({
    super.key,
    required this.alertNumber
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.orangeAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child:  Row(
        children: [
           const Icon(Icons.warning),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Alert $alertNumber',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
