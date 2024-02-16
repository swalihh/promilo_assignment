 import 'dart:convert';

import 'package:crypto/crypto.dart';

class AppService{

  static String encrypteData(String data) {
    return sha256.convert(utf8.encode(data)).toString();
  }
 }
 