import 'package:demoproject/service/http_service.dart';
import 'package:get_it/get_it.dart';

class AuthService {
  late HttpService service;
  init() {
    service = GetIt.instance.get<HttpService>();
  }

  // Future<bool> login(String username, String password) async {
  //   String token = await service.post<String>(HttpService.loginURl,
  //       converter: (Map data) => data['token'],
  //       data: {"username": username, "password": password});
  //   await service.setToken(token);
  //   return service.hasToken();
  // }
}
