import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(28, 33, 46, 1.0),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(61, 72, 92, 1.0),
                height: 150.0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.linear_scale,
                              color: Colors.white,
                              size: 35.0,
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Brand list',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            color: Color.fromRGBO(83, 97, 125, 1.0),
                            boxShadow: [BoxShadow(color: Colors.black26)]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.grey[350].withOpacity(0.3),
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    bottom: 10.0,
                                    right: 10.0,
                                    top: 10.0,
                                    left: -12.0),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Colors.grey[350].withOpacity(0.3),
                                )),
                            style: TextStyle(
                              color: Colors.grey[350].withOpacity(0.3),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: Stack(
                  children: <Widget>[
                    ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Buildcircle(
                            'http://souqofcars.com/media/76f3c-b5ad3cc10fd79b7d7cd45d076a6cedcd.jpg',
                            'Lamborghini'),
                        Buildcircle(
                            'https://moneyinc.com/wp-content/uploads/2016/11/Ferrari-Logo-750x469.jpg',
                            'Ferrari'),
                        Buildcircle(
                            'http://img-cdn.jg.jugem.jp/c5b/2958212/20131101_276939.jpg',
                            'Maserati'),
                        Buildcircle(
                            'http://papers.co/wallpaper/papers.co-ax14-porsche-logo-emblem-car-illustration-art-34-iphone6-plus-wallpaper.jpg',
                            'Porsche'),
                        Buildcircle(
                            'http://vforvectors.com/wp-content/uploads/2010/26/00.jpg',
                            'BMW'),
                      ],
                    ),
                    //gradient in end of list effect
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Opacity(
                          opacity: 0.03,
                          child: RotationTransition(
                            turns: new AlwaysStoppedAnimation(360 / 360),
                            child: Image.network(
                                'http://samaritan-counseling.com/wp-content/themes/Stellar_Responsive/images/right-fade.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "New car",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "More",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 220.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Buildcard(
                              'https://s3.amazonaws.com/peoplepng/wp-content/uploads/2018/07/11121827/Ferrari-PNG-Download-Image-1024x463.png',
                              'Ferrari',
                              '3.5'),
                          SizedBox(
                            width: 20.0,
                          ),
                          Buildcard(
                              'https://www.pngarts.com/files/1/Porsche-PNG-Pic.png',
                              'Porsche',
                              '8.3'),
                          SizedBox(
                            width: 20.0,
                          ),
                          Buildcard(
                              'http://www.pngpix.com/wp-content/uploads/2016/06/PNGPIX-COM-Maserati-GranTurismo-Car-PNG-image.png',
                              'Maserati',
                              '5.7'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Luxury list",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "More",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Container(
                        height: 200.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/p16-1028-a4-rgb-1521465282.jpg',)
                          ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                spreadRadius: 10.0,
                                color: Colors.black26,
                                blurRadius: 15.5,
                              ),
                            ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.directions_car,
              color: Colors.white,
            ),
            onPressed: () {}),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color.fromRGBO(61, 72, 92, 1.0),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Opacity(
                  opacity: 1.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Color.fromRGBO(185, 191, 199, 1.0),
                    ),
                    onPressed: () {},
                  ),
                ),
                Opacity(
                  opacity: 1.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.assignment,
                      color: Color.fromRGBO(185, 191, 199, 1.0),
                    ),
                    onPressed: () {},
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.notifications_active,
                        color: Color.fromRGBO(185, 191, 199, 1.0),
                      ),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 6.0,
                      right: 7.0,
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 2.5,
                            ),
                          ],
                          border: new Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: Center(child: Text('3',style: TextStyle(color: Colors.white,fontSize: 5.0),)),
                      ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: 1.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.assignment_ind,
                      color: Color.fromRGBO(185, 191, 199, 1.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Buildcard(String _url, String name, String prix) {
  return Container(
    height: 210.0,
    width: 150.0,
    decoration: new BoxDecoration(
      color: Color.fromRGBO(61, 72, 92, 1.0),
      borderRadius: new BorderRadius.all(Radius.circular(5.0)),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black54,
          blurRadius: 8.0,
        ),
      ],
    ),
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 18.0, right: 18.0),
          child: Container(
            child: Image.network(_url),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Color.fromRGBO(28, 33, 46, 1.0),
                        fontSize: 15.0,
                        letterSpacing: 1.0),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "\$",
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                  Text(
                    " " + prix,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  Text(
                    " / min",
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                ],
              ),
              SizedBox(
                height: 7.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 7.5,
                        ),
                      ],
                    ),
                    child: new RawMaterialButton(
                      onPressed: () {},
                      child: new Icon(
                        Icons.keyboard_tab,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      shape: new CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget Buildcircle(String _url, String name) {
  return Container(
    width: 100.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(_url),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          name,
          style: TextStyle(color: Color.fromRGBO(67, 76, 88, 1.0)),
        ),
      ],
    ),
  );
}
