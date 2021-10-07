import 'package:flutter/material.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/alert_dialog.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/back_button.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/done_button.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/header_text.dart';

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
              headerText("Forgot password", Theme.of(context).primaryColor, FontWeight.bold, 30.0),
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
              _sendButton(context),
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

Widget _sendButton( BuildContext context ) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0), 
    child: RaisedButton(
      onPressed: () {
        _showAlerta(context);
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

// assets/lock.png 'Your password has been reset' "You'll shortly receive an email with a code to setup an password" 
// "You'll shortly receive an email with a code to setup an password"
void _showAlerta( BuildContext context) {
  showAlertDialog(
    context, 
    AssetImage('assets/lock.png'), 
    'Your password has been reset', 
    "You'll shortly receive an email with a code to setup an password",  
    doneButton(context, 'Done')
  );
}



