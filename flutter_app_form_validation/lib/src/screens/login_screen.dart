import 'package:flutter/material.dart';
import 'package:flutter_app_form_validation/src/mixins/mixin_validation.dart';

class LoginScreen extends StatefulWidget{

  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin{

  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 15.0),),
            submitButton()
          ],
        ),
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email ',
        hintText: 'susan@gmail.com'
      ),
      validator: emailValidation,
      onSaved: (outputEmail){
        email = outputEmail;
      },
    );

  }

  Widget passwordField(){
      return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password'
        ),
        validator: passwordValidation,
        onSaved: (outputPassword){
          password = outputPassword;
        },
      );
  }

  Widget submitButton(){
    return RaisedButton(
      color: Colors.blue,
      child: Text("Submit !"),
        onPressed: (){
          if(formKey.currentState.validate()){
            formKey.currentState.save();
            print("This time to post API for $email & $password");
          }
        }
    );
  }

}