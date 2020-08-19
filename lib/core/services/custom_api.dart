/*
* Operações de integração com WS (API)
*/

import 'package:calcu_list/core/services/api.dart';

class CustomAPI extends API {
  static CustomAPI _api;

  CustomAPI();

  static CustomAPI instance() {
    if (_api == null) {
      _api = CustomAPI();
    }

    return _api;
  }

  //Get all brands from WS
  // Future<dynamic> getAllVehicleBrands() async {
  //   try {
  //     var response = await client.get("$BASE_URL/carros/marcas.json");
  //     if (response.statusCode == 200) {
  //       return vehicleBrandFromJson(response.body);
  //     }
  //   } catch (exception, _) {
  //     throw exception;
  //   }
  // }
}
