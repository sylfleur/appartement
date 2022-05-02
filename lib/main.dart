import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main(List<String> args) {
  runApp(const CrudRest());
}

class CrudRest extends StatefulWidget {
  const CrudRest({ Key? key }) : super(key: key);

  @override
  State<CrudRest> createState() => _CrudRestState();
}

class _CrudRestState extends State<CrudRest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrudRest',
      home: HomePage(),
    );
  }
}