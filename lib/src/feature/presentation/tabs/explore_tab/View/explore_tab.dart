import 'package:flutter/material.dart';
import 'package:manfood/src/colors/colors.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:manfood/src/feature/presentation/commons_widgets/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    _topBar(context),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      alignment: Alignment.centerLeft,
                      child: headerText('Discover new places', Colors.black, FontWeight.bold, 30.0)
                    ),
                    _sliderCards(),
                    _headers(context, 'Popular this week', 'show all'),
                    _populares(context, 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    _populares(context, 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'), 
                    _populares(context, 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'), 
                    SizedBox(
                      height: 10.0,
                    ),
                    _headers(context, 'Collections', 'show all'),
                    _sliderCollections(),
                  ],
                )
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 310,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.0,
              color: gris,
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              child:
                  Text('Search', style: TextStyle(color: gris, fontSize: 17.0)),
            )
          ],
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
          icon: Icon(Icons.filter_list, size: 30, color: Colors.white),
          onPressed: () {},
        ),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjera(context);
          }
        );
      },
    )
  );
}

Widget _tarjera(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: 200.0,
            height: 250.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80')
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Andy & Cindy's Diner",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold, 
                  fontSize: 17.0
                )
              )
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("87 Botsford Circle Apt",
                style: TextStyle(
                  color: gris,
                  fontWeight: FontWeight.w500, 
                  fontSize: 13.0
                )
              )
            ),
            Row(
              children: [
                Icon(Icons.star, color: amarillo,size: 16),
                Text("4.8", style:
                  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  )
                ),
                Text("(233 ratings)", style:
                  TextStyle(
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  )
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: RaisedButton(
                    elevation: 0.5,
                    shape: StadiumBorder(),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    onPressed: (){},
                    child: Text('Delivery', style: TextStyle(fontSize: 11.0)),
                  )
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(textAction, style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15.0
            )),
            Icon(Icons.play_arrow),
          ],
        ),
      )
    ],
  );
}

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(foto)),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText("Andy & Cindy's Diner", Colors.black, FontWeight.bold, 17.0),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "87 Botsford Circle Apy",
                      style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0
                      )
                    )
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(
                        "4.5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        " (230 ratings)",
                        style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                        ),
                      ), 
                      Container(
                        margin: EdgeInsets.only(left: 50.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                          child: Text(
                            "Delivery",
                            style: TextStyle(fontSize: 11.0),
                          )
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ]
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
            return _tarjectaCollection(context);
          },
        );
      },
    ),
  );
}

Widget _tarjectaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage('https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
          )
        ),
      ],
    )
  );
}