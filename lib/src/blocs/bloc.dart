import 'dart:async';

import 'validators.dart';

class Bloc with Validators {
  final StreamController _emailController = new StreamController<String>();
  final StreamController _passwordController = new StreamController<String>();

  Function(String) get changeEmail => this._emailController.sink.add;
  Stream<String> get emailStream =>
      this._emailController.stream.transform(this.validateEmail);

  Function(String) get changePassword => this._passwordController.sink.add;
  Stream<String> get passwordStream =>
      this._passwordController.stream.transform(this.validatePassword);

  dispose() {
    this._emailController.close();
    this._passwordController.close();
  }
}
