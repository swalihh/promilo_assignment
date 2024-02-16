import 'package:promilo/data/network/network_service.dart';
import 'package:promilo/resources/app_urls/urls.dart';
import 'package:promilo/utils/typedef.dart';

class AuthRepo {
  final network = NetworkService();

  EitherResponce loginUser(Map<String, dynamic> body) async {
    return await network.post(AppUrl.loginUrl, body);
  }
}
