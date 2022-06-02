import 'dart:convert';

import 'package:http/http.dart';
import 'package:tyba_technical_test/repositories/dto/google_maps_response_dto.dart';
import 'package:tyba_technical_test/repositories/google_maps/igoogle_maps_repository.dart';
import 'package:http/http.dart' as http;

class GoogleMapsRepository implements IGoogleMapsRepository {
  final String url;

  GoogleMapsRepository({required this.url});

  @override
  Future<GoogleMapsResponseDto> searchRestaurantsInPlace(String place) async {
    GoogleMapsResponseDto response = GoogleMapsResponseDto();
    try {
      Response jsonResponse =
          await http.get(Uri.parse(url + '&query=Restaurants in $place'));
      if (jsonResponse.statusCode != 200) {
        throw Exception('Failed to load restaurants');
      }
      List<dynamic> resultsRaw = jsonDecode(jsonResponse.body)['results'];
      List<Map<String, dynamic>> results = resultsRaw.cast();
      response = GoogleMapsResponseDto.fromJson(results);
    } catch (e) {
      print(e);
    }
    return response;
  }
}
