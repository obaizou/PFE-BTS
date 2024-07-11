// ignore_for_file: unnecessary_null_comparison, unnecessary_string_interpolations

import 'package:email_validator/email_validator.dart';
import 'package:pfe/constant/message.dart';

validInput(String val, int min, int max) {
  if (val.length > max) {
    return "$messageInputMax $max ";
  }
  if (val.length < min) {
    return "$messageInputMin $min ";
  }
  if (val.isEmpty) {
    return "$messageInputEmpty ";
  }
}

validateEmail(String val) {
  if (val == null || val.isEmpty) {
    return '$messageInputEmpty';
  }
  if (!EmailValidator.validate(val)) {
    return '$messageInvalidEmail';
  }
  return null;
}
