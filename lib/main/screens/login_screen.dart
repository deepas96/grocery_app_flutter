import 'package:flutter/material.dart';
import 'package:ya_market/main/screens/home_screen.dart';
import 'package:ya_market/main/utils/app_strings.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String mobileNumber = "";
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Container(
              constraints: BoxConstraints.loose(Size(width, height)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/login_bg.png"),
                      fit: BoxFit.cover)),
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                      constraints: BoxConstraints.loose(Size(350, 200)),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                              fit: BoxFit.cover))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        appString.loginMobileText,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
//                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(30.0),
                          child: TextFormField(
                            cursorColor: Colors.green,
                            decoration: new InputDecoration(
                                enabledBorder: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.green),
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.green),
                                ),
                                hintText: 'Mobile number',
                                // helperText: 'Keep it short, this is just a demo.',
                                labelText: 'Enter mobile number',
                                labelStyle: TextStyle(color: Colors.green),
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                ),
                                hoverColor: Colors.green),
                            keyboardType: TextInputType.phone,
                            onChanged: (text) {
                              mobileNumber = text;
                              print("My number $mobileNumber");
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: ButtonTheme(
                          buttonColor: Colors.green,
                          minWidth: 200.0,
                          height: 44.0,
                          child: RaisedButton(
                            onPressed: () {
                              FocusScopeNode currentFocus =
                                  FocusScope.of(context);
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                            },
                            child: Text(
                              "Next",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Text(
                          appString.guestText,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              )),
        ),
      ),
    ));
  }
}
