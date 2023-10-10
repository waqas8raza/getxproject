import 'package:getxproject/data/response/status.dart';

class ApiResponses<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponses({this.data, this.message, this.status});
  ApiResponses.loading() : status = Status.LOADING;
  ApiResponses.completed(this.data) : status = Status.COMPLETED;
  ApiResponses.error() : status = Status.ERROR;
  String tostring() {
    return 'Status:$status\n Message:$message \n Data:$data';
  }
}