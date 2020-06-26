import 'dart:convert';

import 'package:flutter/services.dart';

class _AnimeService {
  List<dynamic> animes = [];

  Future<List<dynamic>> loadData(String endpoint) async {
    final res = await rootBundle.loadString('data/anime_db.json');
    Map dataMap = json.decode(res);
    this.animes = dataMap[endpoint];
    return this.animes;
  }

}

final animeService = new _AnimeService();