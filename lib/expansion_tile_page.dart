import 'package:flutter/material.dart';

class ExpansionTilePage extends StatefulWidget {
  const ExpansionTilePage({super.key});

  @override
  State<ExpansionTilePage> createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  int? currentNumExpansion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            // print(index);
            return ExpansionTile(
              onExpansionChanged: (bool value) {
                currentNumExpansion = value ? index : null;
                setState(() {});
              },
              initiallyExpanded: currentNumExpansion == index,
              title: const Text("ASUS"),
              children: const [
                Text('CPU: Core I9 153525HX'),
              ],
            );
          }),
    );
  }
}
