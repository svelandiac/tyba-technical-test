import 'package:tyba_technical_test/repositories/google_maps/igoogle_maps_repository.dart';

import '../repositories/dto/google_maps_response_dto.dart';

class GoogleMapsController {
  final IGoogleMapsRepository repository;

  GoogleMapsController({required this.repository});

  Future<GoogleMapsResponseDto> searchRestaurantsInPlace(String place) {
    return repository.searchRestaurantsInPlace(place);
  }
}