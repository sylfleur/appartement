// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'proprietaire/create_proprietaire.dart';
import 'proprietaire/read.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CrudRest'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _crudButton('Create'),
            // _crudButton('Read'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Create()));
              },
              child: Text('Create'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Read()));
              },
              child: Text('Read'),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _crudButton(data) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.push();
        print(data);
      },
      child: Text(data),
    );
  }
}
