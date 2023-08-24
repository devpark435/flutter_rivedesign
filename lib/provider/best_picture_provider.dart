import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:rive_flutter/model/best_picture_model.dart';

Future<BestPictureModel> bestPictureProvider() async {
  //api 호출을 위한 주소
  //http request의 결과 즉 api 호출의 결과를 받기 위한 변수

  String jsonString =
      await rootBundle.loadString('assets/json/bestPicture.json');

  final jsonResponse = json.decode(jsonString);

  return BestPictureModel.fromJson(jsonResponse);
}
