// ignore_for_file: annotate_overrides

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});
  @override
  List<Object> get props => [message];
}

// General failures
class ServerFailure extends Failure {
  final int statusCode;
  @override
  // ignore: overridden_fields
  final String message;
  final dynamic response;
  const ServerFailure(
      {required this.statusCode, required this.message, this.response})
      : super(message: message);
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

