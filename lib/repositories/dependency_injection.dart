import 'package:get/get.dart';
import 'package:tyba_technical_test/controllers/auth_controller.dart';
import 'package:tyba_technical_test/controllers/google_maps_controller.dart';
import 'package:tyba_technical_test/controllers/history_controller.dart';
import 'package:tyba_technical_test/repositories/auth/auth_repository.dart';
import 'package:tyba_technical_test/repositories/google_maps/google_maps_repository.dart';
import '../config/environments.dart';

class DependencyInjection {
  void dependencies(Environment env) {
    if (env == Environment.dev) {
      Get.put(AuthController(auth: AuthRepository()));
      Get.put(GoogleMapsController(
          repository: GoogleMapsRepository(
              url:
                  'https://maps.googleapis.com/maps/api/place/textsearch/json?radius=2000&types=food&key=AIzaSyC9e-v9wnoaydGc7yKz0i42AjTbuUu1frc')));
    }
    Get.put(HistoryController());
  }
}
