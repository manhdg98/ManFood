import 'package:flutter/material.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/header_text.dart';

void showAlertDialog( 
    BuildContext context, 
    ImageProvider<Object> imagePath, 
    String headerTitle, 
    String headerSubTitle,
    String labelButton,
    Function doneButtonFunc
  ) {
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
                image: imagePath,
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: headerText(headerTitle, Theme.of(context).primaryColor, FontWeight.bold, 20.0)
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(headerSubTitle,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ))
              ),
              _doneButton(context, labelButton, doneButtonFunc)
            ],
          ),
        ),
      );
    }
  );
}

Widget _doneButton( BuildContext context,String labelButton, Function doneButtonFunc) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0), 
    child: RaisedButton(
      onPressed: () {
        doneButtonFunc();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text(labelButton, style: TextStyle(
        color: Colors.white,
        fontSize: 15.0
      )),
    )
  );
}