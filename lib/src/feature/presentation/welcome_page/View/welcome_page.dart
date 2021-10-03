import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/header_text.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/welcome.jpg'),
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur( sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3)
              )
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText('DELIVERED FAST FOOD TO YOUR DOOR', Colors.white, FontWeight.bold, 45.0)
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: headerText('Set exact location to find the right restaurants near you', Colors.white, FontWeight.w400, 17.0)
              ),
              Container(
                width: 350.0,
                height: 45.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).accentColor,
                  child: Text('Log in', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  )),
                )
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: NetworkImage('https://freepngimg.com/thumb/facebook/24683-2-facebook-logo-photos.png'),
                        width: 30.0,
                        height: 30.0,
                      ),
                      Container(
                        margin: EdgeInsets.only( left: 10.0),
                        child: Text('Connect with facebook', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0
                        )),
                      )
                    ],
                  ),
                )
              )
            ],
          )
        ],
      )
    );
  }
}