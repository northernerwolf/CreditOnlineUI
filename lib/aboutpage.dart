import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const Center(
        child: Text(
          'About',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
