// ignore_for_file: file_names

import 'package:test_flutter_flow/enumSignUp.dart';

SignUpStatus verifySignUpInformation(
    String username, String password1, String password2, bool policyValue) {
  if (username.isEmpty && password1.isEmpty) {
    return SignUpStatus.usernameAndPasswordFieldsAreEmpty;
  }
  if (username.isEmpty) {
    return SignUpStatus.usernameFieldIsEmpty;
  }
  if (password1.isEmpty) {
    return SignUpStatus.passwordFieldIsEmpty;
  }
  if (password1.length < 8) {
    return SignUpStatus.passwordMustHaveAtLeast8Characters;
  }
  if (password1 != password2) {
    return SignUpStatus.passwordsDoNotMatch;
  }

  if (policyValue == false) {
    return SignUpStatus.policyAndTermsNotAccepted;
  }

  return SignUpStatus.formFilledOutCorrectly;
}

SignUpStatus verifySignUpRequest(Map response) {
  if (response["status"] == 409) {
    return SignUpStatus.usernameIsAlreadyUsed;
  }
  if (response["status"] == null) {
    return SignUpStatus.success;
  }

  return SignUpStatus.unknownError;
}

String updatedTextByStatus(SignUpStatus status) {
  switch (status) {
    case SignUpStatus.passwordsDoNotMatch:
      return 'Passwords do not match';
    case SignUpStatus.usernameFieldIsEmpty:
      return 'Please enter an username';
    case SignUpStatus.passwordFieldIsEmpty:
      return 'Please enter a password';
    case SignUpStatus.passwordMustHaveAtLeast8Characters:
      return 'Your password must have at least 8 characters';
    case SignUpStatus.usernameAndPasswordFieldsAreEmpty:
      return 'Please enter an username and a password';
    case SignUpStatus.policyAndTermsNotAccepted:
      return 'Please accept our policy and terms';
    case SignUpStatus.success:
      return 'Account created successfully';
    case SignUpStatus.usernameIsAlreadyUsed:
      return 'That username is taken. Try another';

    case SignUpStatus.unknownError:
      return 'Please check your internet connection';
    case SignUpStatus.formFilledOutCorrectly:
      return 'Nah';
      break;
  }
  return 'Esto no debería ser posible :p';
}
