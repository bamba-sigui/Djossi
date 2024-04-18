import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'password_validation_event.dart';

part 'password_validation_state.dart';

class PasswordValidationBloc extends Bloc<PasswordValidationEvent, PasswordValidationState> {
  PasswordValidationBloc() : super(PasswordValidationState()) {
    on<HiddenPasswordEvent>(_onHiddenPasswordEvent);
    on<HiddenConfirmPasswordEvent>(_onHiddenConfirmPasswordEvent);
    on<ValidatedPasswordEvent>(_onValidatedPasswordEvent);
    on<ValidatedConfirmPasswordEvent>(_onValidatedConfirmPasswordEvent);
    on<InitialEvent>(_onInitialEvent);
  }

  void _onHiddenPasswordEvent(HiddenPasswordEvent event, Emitter<PasswordValidationState> emit) {
    final state = this.state;
    print(state.isHidden);
    emit(PasswordValidationState(
      isHidden: !state.isHidden,
      isHiddenPass: state.isHiddenPass,
      isValid: state.isValid,
      isEmpty: state.isEmpty,
      hasMinLength: state.hasMinLength,
      hasSpecialChar: state.hasSpecialChar,
      hasUpperCase: state.hasUpperCase,
    ));
  }

  void _onHiddenConfirmPasswordEvent(HiddenConfirmPasswordEvent event, Emitter<PasswordValidationState> emit) {
    final state = this.state;
    print(state.isHidden);
    emit(
      PasswordValidationState(
        isHidden: state.isHidden,
        isHiddenPass: !state.isHiddenPass,
        isValid: state.isValid,
        isEmpty: state.isEmpty,
        hasMinLength: state.hasMinLength,
        hasSpecialChar: state.hasSpecialChar,
        hasUpperCase: state.hasUpperCase,
      ),
    );
  }

  void _onValidatedPasswordEvent(
      ValidatedPasswordEvent event, Emitter<PasswordValidationState> emit) {
    final password = event.password;
    final state = this.state;
    bool isEmpty = password.length == 0;
    if (password.length >= 4) {
      bool hasMinLength = password.length >= 6;
      bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
      bool hasSpecialChar =
          password.contains(RegExp(r'[!@#\\$%^&*(),.?":{}|<>]'));
      emit(
        PasswordValidationState(
          isHidden: state.isHidden,
          isHiddenPass: state.isHiddenPass,
          isValid: hasMinLength && hasUpperCase && hasSpecialChar && !isEmpty,
          isEmpty: isEmpty,
          hasMinLength: hasMinLength,
          hasSpecialChar: hasSpecialChar,
          hasUpperCase: hasUpperCase,
        ),
      );
    } else {
      emit(PasswordValidationState(
        isHidden: true,
        isHiddenPass: true,
        isValid: false,
        isEmpty: true,
        hasMinLength: true,
        hasSpecialChar: true,
        hasUpperCase: true,
      ));
    }
  }

  void _onValidatedConfirmPasswordEvent(ValidatedConfirmPasswordEvent event,
      Emitter<PasswordValidationState> emit) {
    final password = event.password;
    final confirmPassword = event.confirmPassword;

    bool confirmPasswordIsValid = password == confirmPassword;
    final isValid = state.isValid && confirmPasswordIsValid;
    print("isValid  ${state.isValid}");
    emit(
      PasswordValidationState(
        isHidden: state.isHidden,
        isHiddenPass: state.isHiddenPass,
        isValid: isValid,
        isEmpty: state.isEmpty,
        hasMinLength: state.hasMinLength,
        hasSpecialChar: state.hasSpecialChar,
        hasUpperCase: state.hasUpperCase,
      ),
    );
  }

  void _onInitialEvent(InitialEvent event, Emitter<PasswordValidationState> emit) {
    emit(PasswordValidationState(
      isHidden: true,
      isHiddenPass: true,
      isValid: false,
      isEmpty: true,
      hasMinLength: true,
      hasSpecialChar: true,
      hasUpperCase: true,
      isMinLength: false,
    ));
  }
}

