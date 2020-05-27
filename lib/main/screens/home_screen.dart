import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "YA Market",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: -1.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.search,
                color: Colors.black54,
              ),
            ),
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 12.0),
//              child: Icon(
//                Icons.account_circle,
//                color: Colors.black54,
//              ),
//            ),
          ],
        ),
        body: Stack(children: [
          new Center(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, position) {
                    return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Icon(
                                      Icons.account_circle,
                                      size: 40.0,
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 4.0),
                                          child: Text(
                                            "Test",
                                            style: TextStyle(fontSize: 18.0),
                                          ),
                                        ),
                                        Text(
                                          "Test",
                                          style: TextStyle(
                                              color: Colors.black54),
                                        )
                                      ],
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                    ),
                                    flex: 9,
                                  ),
                                  Expanded(
                                    child: Icon(Icons.more_vert),
                                    flex: 1,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ));
                  }
              )
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black54,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.black54,
              ),
              title: Text(
                "My Orders",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer,
                color: Colors.black54,
              ),
              title: Text(
                "My Offers",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black54,
              ),
              title: Text(
                "My Cart",
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      );
    }
}