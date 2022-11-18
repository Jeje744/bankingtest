import 'dart:convert';
import 'dart:io';
import 'package:bankingtest/models/model_user.dart';
import 'package:http/http.dart' as http;

class RepositoryModel {
  get baseUrl => null;

  get secretKey => null;

  get a => null;

  Future authLogin(String username, String password) async {
    const baseUrl = 'https://mockva.daksa.co.id/mockva-rest/';
    const secretKey =
        'basic NmFhNjE2MGQtMjcyMC00MDgwLTg2NzMtNWRiYmQ0ODJkNGZlOjJjNjhtNjZiOWo5N2IyZmZwdHZ4ZWJqeTl2b3Y1ZjhsaGdrOTNnNWpoZ2txeDRpNTg1MjRvM2o3MTNjaXQzeHo=';
    try {
      final response = await http.post(Uri.parse('${baseUrl}rest/auth/login/'),
          headers: {
            //"Authorization":
            HttpHeaders.authorizationHeader: secretKey,
            "Content-Type": "application/json"
          },
          body: json.encode({"username": username, "password": password}));

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return throw Exception('Failed to load data');
    }
  }

  Future getUser() async {
    try {
      var accountId = a['accountId'].toString();
      final response = await http.get(
        Uri.parse(
            'https://mockva.daksa.co.id/mockva-rest/rest/account/detail/?id=$accountId'),
        headers: {
          //"Authorization":
          HttpHeaders.authorizationHeader: secretKey,
          "Content-Type": "application/json",
          "_sessionId": a['sessionId'],
        },
      );
      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<detailuser> listuser =
            it.map((e) => detailuser.fromJson(e)).toList();
        return listuser;
      }
    } catch (e) {
      return throw Exception('Failed to load data');
    }
  }
}
