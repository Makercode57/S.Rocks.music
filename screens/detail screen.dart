import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String serviceTitle;

  const DetailScreen({required this.serviceTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(serviceTitle),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text(
          'Details for $serviceTitle',
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
