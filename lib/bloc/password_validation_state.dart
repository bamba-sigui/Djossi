part of 'password_validation_bloc.dart';

enum PasswordStatus { initial, valid, error }

class PasswordValidationState extends Equatable {
  const PasswordValidationState({
    this.isHidden = true,
    this.isHiddenPass = true,
    this.isValid = false,
    this.isEmpty = true,
    this.hasMinLength = true,
    this.hasUpperCase = true,
    this.hasSpecialChar = true,
    this.isMinLength = false,
  });

  final bool isHidden;
  final bool isHiddenPass;
  final bool isValid;
  final bool isEmpty;
  final bool hasMinLength;
  final bool hasUpperCase;
  final bool hasSpecialChar;
  final bool isMinLength;

  @override
  List<Object?> get props => [
        isHidden,
        isHiddenPass,
        isValid,
        isEmpty,
        hasMinLength,
        hasUpperCase,
        hasSpecialChar,
        isMinLength,

      ];
}
