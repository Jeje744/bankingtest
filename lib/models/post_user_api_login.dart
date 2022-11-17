//import 'dart:convert';

//import 'dart:convert';
import 'dart:convert';
import 'dart:io';

// import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;

//import 'model_repository.dart';
//import 'package:bankingtest/models/model_repository.dart';

Future postLogin(String username, String password) async {
  // final login = Loginuser(username: username, password: password);

  // developer.log('$login.toJson()');

  // final login1 = (login.toJson());
  // developer.log(login1.toString());
  // final newLogin = (Loginuser.fromJson(login1));
  // developer.log(newLogin.toString());

  final response = await http.post(
      Uri.parse('https://mockva.daksa.co.id/mockva-rest/rest/auth/login/'),
      // HttpHeaders.authorizationHeader: 'Basic your_api_token_here'
      headers: {
        //"Authorization":
        HttpHeaders.authorizationHeader:
            "basic NmFhNjE2MGQtMjcyMC00MDgwLTg2NzMtNWRiYmQ0ODJkNGZlOjJjNjhtNjZiOWo5N2IyZmZwdHZ4ZWJqeTl2b3Y1ZjhsaGdrOTNnNWpoZ2txeDRpNTg1MjRvM2o3MTNjaXQzeHo="
      },
      //body: jsonEncode({"username": username, "password": password}));
      //body: newLogin);
      body: ContentType(
          'JSON', json.encode({"username": username, "password": password})));
  try {
    final data = jsonDecode(response.body);
    developer.log('$data');

    // developer.log(response.body);
    // developer.log(response.statusCode.toString());
    //body: jsonEncode(sure));
    // body: sure);
    //USER050905 ---->>> isi ke form loginnya
    //tb8450z ---->>> isi ke form loginnya

    // if (response.statusCode == 200) {
    //   return true;
    // } else {
    //   return false;
    // }
  } catch (e) {
    developer.log(e.toString());
    // catch (e) {
  }
}
