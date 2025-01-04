// import 'package:dio/dio.dart';
// import 'package:flutter_sesi4/core/api_provider.dart';
// import 'package:flutter_sesi4/model/detail.dart';


// class DetailRepository extends ApiProvider {
//   Future<List<Welcome>> photos() async {
    
//     try {
//   Response response = await dio.get('/photos/:id');
  
//   List<dynamic> listData = response.data;
//   return listData.map((element)=> Welcome.fromJson(element)).toList();
// } on DioException catch (_) {
//   return [];
// }
//   }
// }