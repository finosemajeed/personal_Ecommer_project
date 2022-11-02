import 'dart:convert';

import 'package:design_1/store_details_response/store_details_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

List<StoreDetailsResponse> parseData(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed
      .map<StoreDetailsResponse>((json) => StoreDetailsResponse.fromJson(json))
      .toList();
}

Future<List<StoreDetailsResponse>> fetchPhotos() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));
      

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseData, response.body);
}
