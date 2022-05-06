// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../controller/proprietaire.dart';
import '../../models/proprietaire.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  ProprietaireController proprietaireController = ProprietaireController();
  final _formKey = GlobalKey<FormState>();

  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final telephoneController = TextEditingController();
  final ifuController = TextEditingController();

  // bool ifu = true;
  dynamic _ifu = '';
  late Future<Proprietaire> _futureProprietaire;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print('Create rendered');
  }

  @override
  Widget build(BuildContext context) {
    var nom = nomController.text;
    var prenom = prenomController.text;
    var telephone = telephoneController.text;
    var ifu = _ifu;
    return Scaffold(
      appBar: AppBar(
        title: const Text('CREATE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'nom',
                      ),
                      controller: nomController,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'prenom',
                      ),
                      controller: prenomController,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'telephone',
                        ),
                        controller: telephoneController),
                  ),
                  ListTile(
                    leading: const Icon(Icons.dashboard),
                    title: RadioListTile(
                      title: Text('Oui'),
                      value: 1,
                      groupValue: _ifu,
                      onChanged: (value) {
                        setState(
                          () {
                            _ifu = value;
                          },
                        );
                      },
                    ),
                    subtitle: RadioListTile(
                      title: Text('Non'),
                      value: 2,
                      groupValue: _ifu,
                      onChanged: (value) {
                        setState(
                          () {
                            _ifu = value;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: Text('Maison'),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AddMaisonInProprietaire(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                      setState(
                        () {
                          _futureProprietaire =
                              proprietaireController.createProprietaire(
                                  nom, prenom, telephone, false);
                          //    print(_futureProprietaire);
                        },
                      );
                      //Navigator.pop(context);
                    },
                    child: Text('Save'),
                  )
                ],
              ),
            ),
            // Text(nom),
            // Text(prenom),
            // Text(telephone),
            // Text(
            //   '${ifu == 1 ? true : false}',
            // ),
          ],
        ),
      ),
    );
  }
}

// Future<Proprietaire> createProprietaire(
//     String nom, String prenom, String telephone, bool ifu) async {
//   final response = await http.post(
//     Uri.parse(Env.apiUrl + '/proprietaire'),
//     headers: <String, String>{
//       'content-type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, dynamic>{
//       "nom": nom,
//       "prenom": prenom,
//       "telephone": telephone,
//       "disposeIfu": ifu,
//     }),
//   );
//   if (response.statusCode == 201) {
//     return Proprietaire.fromJson(json.decode(response.body));
//   } else {
//     throw Exception(response.body);
//   }
// }
