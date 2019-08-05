import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    options = json.decode(resp)['rutas'];
    return options;
  }
}

final menuProvider = _MenuProvider();
