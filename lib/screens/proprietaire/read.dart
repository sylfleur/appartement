import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../env.dart';

class Read extends StatefulWidget {
  const Read({Key? key}) : super(key: key);

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProprietaire().then(
      (value) => print(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Proprietaire'),
      ),
    );
  }
}

Future<String> getProprietaire() async {
  var response = await http.get(
    Uri.parse(Env.apiUrl + '/proprietaire'),
  );
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception(response.body);
  }
}
