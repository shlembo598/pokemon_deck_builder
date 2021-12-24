import 'dart:developer';

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Search screen rebuild');

    return const Scaffold(
      body: Center(
        child: Text('Search screen'),
      ),
    );
  }
}
