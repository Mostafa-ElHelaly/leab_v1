import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:globaladvice_new/core/error/failure.dart';

abstract class BaseUseCase<T, Parameter> {
  Future<Either<T, Failure>> call(Parameter parameter);
}

class Noparamiter extends Equatable {
  const Noparamiter();

  @override
  List<Object?> get props => [];
}
