import 'package:tyba_technical_test/repositories/dto/google_maps_response_dto.dart';

abstract class IGoogleMapsRepository {
  Future<GoogleMapsResponseDto> searchRestaurantsInPlace(String place);
}