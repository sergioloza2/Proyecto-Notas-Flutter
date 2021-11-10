// ignore_for_file: file_names

enum SignUpStatus {
  passwordsDoNotMatch,
  usernameFieldIsEmpty,
  passwordFieldIsEmpty,
  passwordMustHaveAtLeast8Characters,
  usernameAndPasswordFieldsAreEmpty,
  policyAndTermsNotAccepted,

  formFilledOutCorrectly,
  success,

  usernameIsAlreadyUsed,
  unknownError
}
