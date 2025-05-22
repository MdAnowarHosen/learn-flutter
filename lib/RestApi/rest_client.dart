import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Utility/utility.dart';

const baseURL = "https://crud.teamrabbil.com/api/v1/";
const header = {"Content-Type": "application/json"};

bool productCreateRequest(formValue) {
  var url = Uri.parse(baseURL + "CreateProduct");
  var data = json.encode(formValue);

  var response = postRequest(url, header, data);
  var resultBody = json.decode(response.body);
  if (response.StatusCode == 200 && resultBody['status'] == 'success') {
    successToast('Product Created Successfully');
    return true;
  } else {
    // show error toast
    errorToast('Something went wrong');
    return false;
  }
}

postRequest(url, header, data) async {
  var response = await http.post(url, headers: header, body: data);
  return response;
}
