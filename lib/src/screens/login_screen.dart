import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            this.emailField(bloc),
            this.passwordField(bloc),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            this.submitButton(),
          ],
        ));
  }

  StreamBuilder emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return TextField(
            onChanged: (value) => bloc.changeEmail(value),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              errorText: snapshot.error,
              hintText: 'you@example.com',
              labelText: 'Email Address',
            ),
          );
        });
  }

  StreamBuilder passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return TextField(
            onChanged: (value) {
              bloc.changePassword(value);
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
