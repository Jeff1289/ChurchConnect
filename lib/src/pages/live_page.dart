import 'package:flutter/material.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Live')),
        body: const Center(child: Text('Live stream / vidéos ici')),
      );
}
