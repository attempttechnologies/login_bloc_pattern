import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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

  TextField emailField() {
    return TextField(
      onChanged: (value) {},
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        errorText: '',
        hintText: 'you@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  TextField passwordField() {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        errorText: '',
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  RaisedButton submitButton() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
