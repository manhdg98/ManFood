import 'package:flutter/material.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/alert_dialog.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/done_button.dart';
import 'package:manfood/src/feature/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:manfood/src/feature/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:manfood/src/feature/presentation/tabs/my_order_page/View/my_order_page.dart';
import 'package:manfood/src/feature/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget( int index ) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items:<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'My Order'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Favourite'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Explore'
        )
      ]
    );
  }

  Future _pedirLocation(BuildContext context) async {
    showAlertDialog(
      context, 
      AssetImage('assets/location.jpg'),
      "Enable Your Location", 
      "Please allow to use your location to show nearby restaurant on the map.", 
      _doneButton(context, 'Enable Location')
    );
  }

  Widget _doneButton( BuildContext context,String labelButton) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0), 
    child: RaisedButton(
      onPressed: () {
        print("location");
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
}



