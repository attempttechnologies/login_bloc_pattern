import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  final _bloc = new Bloc();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            this.emailField(),
            this.passwordField(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            this.submitButton(),
          ],
        ));
  }

  StreamBuilder emailField() {
    return StreamBuilder(
        stream: this._bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return TextField(
            onChanged: (value) => this._bloc.changeEmail(value),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              errorText: snapshot.error,
              hintText: 'you@example.com',
              labelText: 'Email Address',
            ),
          );
        });
  }

  StreamBuilder passwordField() {
    return StreamBuilder(
        stream: this._bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return TextField(
            onChanged: (value) {
              this._bloc.changePassword(value);
            },
            decoration: InputDecoration(
              errorText: snapshot.error,
              hintText: 'Password',
              labelText: 'Password',
            ),
          );
        });
  }

  RaisedButton submitButton() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
