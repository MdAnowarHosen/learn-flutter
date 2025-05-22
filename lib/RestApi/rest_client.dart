import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Utility/utility.dart';

const baseURL = "https://crud.teamrabbil.com/api/v1/";
const header = {"Content-Type": "application/json"};

Future<bool> productCreateRequest(Map<String, String> formValue) async {
  var url = Uri.parse(baseURL + "CreateProduct");
  var data = json.encode(formValue);

  var response = await postRequest(url, header, data);
  var resultBody = json.decode(response.body);

  if (response.statusCode == 200 && resultBody['status'] == 'success') {
    successToast('Product Created Successfully');
    return true;
  } else {
    errorToast('Something went wrong');
    return false;
  }
}

Future<http.Response> postRequest(
  Uri url,
  Map<String, String> headers,
  String data,
) async {
  var response = await http.post(url, headers: headers, body: data);
  return response;
}
