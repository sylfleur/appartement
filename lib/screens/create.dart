// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {

   final _formKey = GlobalKey<FormState>();

  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final telephoneController = TextEditingController();
  final ifuController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Create rendered');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CREATE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'nom',
                    ),
                    controller: nomController,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'prenom',
                      ),
                      controller: prenomController,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'telephone',
                    ),controller: telephoneController
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ifu',
                    ),controller: ifuController,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      }
                      setState(() {
                        
                      });
                      //Navigator.pop(context);
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ),
            Text(nomController.text),
            Text(prenomController.text),
            Text(telephoneController.text),
            Text(ifuController.text),
          ],
        ),
      ),
    );
  }
}
