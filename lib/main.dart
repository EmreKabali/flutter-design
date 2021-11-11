import 'package:flutter/material.dart';
import 'package:walletappdesign/SquidGame.dart';
import 'package:walletappdesign/Wallet.dart';

void main() {
  runApp(BrainHomePage());
}

class BrainHomePage extends StatelessWidget {
  BrainHomePage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SquidGame(),
      debugShowCheckedModeBanner: false,
    );
  }
}
