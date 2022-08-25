import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:web_dashboard/models/dashboard_model.dart';

class DashboardService extends GetxController {
  DashboardModel? dashboardModel;
  ValueNotifier<bool> isLoading = ValueNotifier(true);

  @override
  Future<void> onInit() async {
    await getData().whenComplete(() {
      isLoading.value = false;
      update();
    });
    super.onInit();
  }

  Future<void> getData() async {
    var headers = {'Authorization': 'Bearer ssss'};

    var request = http.Request(
        'GET',
        Uri.parse(
            'http://abdo1572001-003-site3.itempurl.com/api/Statistics_C'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String rawJson = await response.stream.bytesToString();
      Map<String, dynamic> mappedJson = jsonDecode(rawJson);
      if (mappedJson['status']) {
        dashboardModel = DashboardModel.fromMap(mappedJson);
      } else {}
    } else {
      debugPrint(response.reasonPhrase);
    }
  }
}
