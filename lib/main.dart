import 'package:flutter/material.dart';

import 'pokeCell.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PokeCell(),
    ),
  );
}
