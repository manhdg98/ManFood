import 'package:flutter/material.dart';
import 'package:manfood/src/widgets/back_button.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.9,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text("Forgot password", style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              )), 
              Container(
                padding: EdgeInsets.all( 10.0 ),
                child: Text("Please enter your email address. You will receive a link to create a new password via email", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0
                )),
              ), 
              _emailInput(),
              _buttonSend(context),
            ],
          ),
        )
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only( top: 40.0 ),
    padding: EdgeInsets.only( left: 20.0 ),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 142, 1.2),
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Your email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    )
  );
}

Widget _buttonSend( BuildContext context ) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0), 
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text('Send', style: TextStyle(
        color: Colors.white,
        fontSize: 15.0
      )),
    )
  );
}