import 'package:flutter/material.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/back_button.dart';
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

void _showAlerta( BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: ( BuildContext context ) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        content: Container(
          height: 400,
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/lock.png'),
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: headerText('Your password has been reset', Theme.of(context).primaryColor, FontWeight.bold, 20.0)
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text("You'll shortly receive an email with a code to setup an password",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ))
              ),
              _doneButton(context)
            ],
          ),
        ),
      );
    }
  );
}

Widget _doneButton( BuildContext context ) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0), 
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text('Done', style: TextStyle(
        color: Colors.white,
        fontSize: 15.0
      )),
    )
  );
}