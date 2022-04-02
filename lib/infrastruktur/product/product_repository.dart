// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// class UserRepository {
//   Dio _dio = Dio();

//   Future<Either<String, String>> getAllProduct() async {
//     Response _response;

//     try {
//       _response =
          

//       return right(_response.toString());
//     } on DioError catch (e) {
//       print(e.response?.statusCode);

//       String errorMessege = e.response!.data.toString();

//       switch (e.type) {
//         case DioErrorType.connectTimeout:
//           break;
//         case DioErrorType.sendTimeout:
//           break;
//         case DioErrorType.receiveTimeout:
//           break;

//         case DioErrorType.response:
//           break;
//         case DioErrorType.cancel:
//           break;
//         case DioErrorType.other:
//           break;
//       }
//       return left(errorMessege);
//     }
//   }
// }
