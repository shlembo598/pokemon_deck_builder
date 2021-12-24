import 'dart:developer';

import 'package:flutter/material.dart';

class DecksScreen extends StatelessWidget {
  const DecksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Sets screen rebuild');

    return const Scaffold(
      body: Center(
        child: Text('Decks screen'),
      ),
    );
  }
}
