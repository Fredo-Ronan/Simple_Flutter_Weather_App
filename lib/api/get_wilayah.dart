import 'dart:convert';

import 'package:bmkg_api_app/models/respon_list_wilayah.dart';
import 'package:http/http.dart' as http;

class GetWilayah {
  final _baseURL = 'https://fredo-ronan-api.cyclic.app/api/list-wilayah';

  Future getDataWilayah() async {
    try {
      final response = await http.get(Uri.parse(this._baseURL));

      // Iterable it = jsonDecode(response.body);

      // List<ResponListWilayah> listWilayah = it.map((e) => ResponListWilayah.fromJson(e)).toList();
      ResponListWilayah listWilayah =
          ResponListWilayah.fromJson(jsonDecode(response.body));
      return listWilayah;
    } catch (error) {
      print(error.toString());
    }
  }
}
