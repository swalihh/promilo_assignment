import 'dart:convert';
import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'package:promilo/utils/appexceptions.dart';
import 'package:promilo/utils/typedef.dart';


class NetworkService{
   EitherResponce post(String url, Map<String, dynamic> data) async {
    final headers = {
      'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    final uri = Uri.parse(url);
    final body = jsonEncode(data);
   late http.Response response;
    try {
       response = await http.post(uri, body: data, headers: headers);
      final loginData = getResponse(response);
      return Right(loginData);
    } on SocketException {
      return Left(InternetException());
    } catch (e) {
      if (e is UnauthorizedException) {
        return Left(UnauthorizedException(message:jsonDecode(response.body)['status']['message']));
      } else if (e is BadRequestException) {
        return Left(BadRequestException());
      } else {
        return Left(CustomException());
      }
    }
  }

  getResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 401) {
      throw UnauthorizedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException();
    } else {
      throw CustomException();
    }
  }
}