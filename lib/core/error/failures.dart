import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage ;
  Failure(this.errMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioerror){
    switch(dioerror.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with api server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Timeout with api server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Timeout with api server");
      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate  with api server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioerror.response!.statusCode!,dioerror.response!.data );
      case DioExceptionType.cancel:
        return ServerFailure("request with api server was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("connection error please try again");
      case DioExceptionType.unknown:
        if(dioerror.message!.contains("SocketException")){
          return ServerFailure("No internet connection");
        }
        return ServerFailure("unexpected error please try again !");
      default:
        return ServerFailure("Oops there was an error please try again later");

    }
  }

  factory ServerFailure.fromResponse(int statusCode,dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode == 404){
      return ServerFailure("Your Request not found , please try again later");
    }else if(statusCode == 500){
      return ServerFailure("Internal server error , please try again later");
    }else{
      return ServerFailure("Oops there was an error please try again later");
    }
  }
}
