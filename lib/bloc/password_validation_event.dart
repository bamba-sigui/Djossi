part of 'password_validation_bloc.dart';

abstract class PasswordValidationEvent extends Equatable {
  const PasswordValidationEvent();
}

class HiddenPasswordEvent extends PasswordValidationEvent {
  @override
  List<Object?> get props => [];
}

class HiddenConfirmPasswordEvent extends PasswordValidationEvent {
  @override
  List<Object?> get props => [];
}

class ValidatedPasswordEvent extends PasswordValidationEvent {
  final String password;
  ValidatedPasswordEvent({required this.password});
  @override
  List<Object?> get props => [password];
}

class ValidatedConfirmPasswordEvent extends PasswordValidationEvent {
  final String password;
  final String confirmPassword;
  ValidatedConfirmPasswordEvent({required this.password, required this.confirmPassword});
  @override
  List<Object?> get props => [password, confirmPassword];
}


class InitialEvent extends PasswordValidationEvent {
  InitialEvent();
  @override
  List<Object?> get props => [];
}
