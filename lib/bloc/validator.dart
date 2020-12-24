import 'dart:async';

mixin Validators {
  var emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.length > 4 && email.length < 8) {
      sink.add(email);
    } else if (email.length >= 8) {
      sink.addError("Email length should be less than 8 chars.");
    } else {
      sink.addError("Email length should be more than 4 chars.");
    }
  });

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 8) {
      sink.add(password);
    } else {
      sink.addError("Password length should be greater than 8 chars.");
    }
  });
}
