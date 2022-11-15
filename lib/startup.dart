import 'package:flutter/material.dart';

import 'cep/presentation/pages/cep_page.dart';

class Startup extends StatelessWidget {
  const Startup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CepPage(),
    );
  }
}
