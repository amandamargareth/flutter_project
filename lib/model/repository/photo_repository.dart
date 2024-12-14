import 'package:dio/dio.dart';
import 'package:flutter_sesi4/core/api_provider.dart';
import 'package:flutter_sesi4/model/photo.dart';

class PhotoRepository extends ApiProvider {
  Future<List<Photos>> photos() async {
    
    try {
  Response response = await dio.get('photos?page=1');
  
  List<dynamic> listData = response.data;
  return listData.map((element)=> Photos.fromJson(element)).toList();
} on DioException catch (_) {
  return [];
}
  }
}