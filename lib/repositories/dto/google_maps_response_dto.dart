class GoogleMapsResponseDto {
  List<GoogleMapsPlaceResult>? results;

  GoogleMapsResponseDto({this.results});

  factory GoogleMapsResponseDto.fromJson(List<Map<String, dynamic>> json) {
    return GoogleMapsResponseDto(
        results: json
            .map((Map<String, dynamic> element) =>
                GoogleMapsPlaceResult.fromJson(element))
            .toList());
  }
}

class GoogleMapsPlaceResult {
  String? address;
  String? icon;
  String? name;
  double? rating;

  GoogleMapsPlaceResult({this.address, this.icon, this.name, this.rating});

  factory GoogleMapsPlaceResult.fromJson(Map<String, dynamic> json) {
    return GoogleMapsPlaceResult(
      address: json["formatted_address"],
      icon: json["icon"],
      name: json["name"],
      rating: json["rating"],
    );
  }
}
