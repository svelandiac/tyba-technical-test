import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyba_technical_test/controllers/auth_controller.dart';
import 'package:tyba_technical_test/controllers/google_maps_controller.dart';
import 'package:tyba_technical_test/controllers/history_controller.dart';
import 'package:tyba_technical_test/presentation/common_widgets/rounded_text_field.dart';
import 'package:tyba_technical_test/presentation/common_widgets/safe_scaffold.dart';
import 'package:tyba_technical_test/repositories/dto/google_maps_response_dto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthController _authController = Get.find();
  final TextEditingController _searchController = TextEditingController();
  final GoogleMapsController _googleMapsController = Get.find();
  final HistoryController _historyController = Get.find();

  List<GoogleMapsPlaceResult> places = [];

  void logout() {
    _authController.logout();
  }

  void searchPlaces() async {
    String city = _searchController.text;
    await _historyController.saveSearch(city);
    GoogleMapsResponseDto response =
        await _googleMapsController.searchRestaurantsInPlace(city);
    if (response.results != null) {
      setState(() {
        places = response.results!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return SafeScaffold(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {}, child: const Text('Ver historial')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: logout, child: const Text('Cerrar sesión')),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text('Ingrese el nombre de la ciudad a buscar restaurantes'),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: RoundedTextField(controller: _searchController),
                width: queryData.size.width * 0.65,
              ),
              // const SizedBox(width: 10,),
              OutlinedButton(
                  onPressed: searchPlaces, child: const Text('Buscar'))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: places.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Column(
                  children: [
                    const Icon(Icons.star),
                    Text(places[index].rating != null
                        ? places[index].rating.toString() + ' / 5.0'
                        : 'No calificado')
                  ],
                ),
                title: Text(places[index].name ?? 'Restaurante'),
                subtitle: Text(places[index].address ?? _searchController.text),
              );
            },
          ),
        )
      ],
    ));
  }
}
