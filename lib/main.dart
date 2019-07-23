import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ui/bottom_login.dart';
import 'ui/social_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool _isCheck = false;

  void onChanged(bool value) {
    setState(() {
      _isCheck = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/dd.png', width: 100.0, height: 60.0)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  width: double.infinity,
                  height: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0),
                            blurRadius: 15.0),
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, -10.0),
                            blurRadius: 10.0)
                      ]),
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 16.0, bottom: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.account_box),
                                hintText: 'Mobile Phone',
                                hintStyle: TextStyle(fontSize: 14.0)),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility_off),
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 14.0)),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                    value: _isCheck,
                                    onChanged: (bool value) {
                                      onChanged(value);
                                    }),
                                Text('Stay Signed in'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.green,
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontFamily: 'Poppins-Medium'),
                              ),
                            ],
                          )

                        ],
                      )),
                ),
                SocialLogin(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "New User? ",
                      style: TextStyle(fontFamily: "Poppins-Medium"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("SignUp",
                          style: TextStyle(
                              color: Color(0xFF5d74e3),
                              fontFamily: "Poppins-Bold")),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "OR ",
                      style: TextStyle(fontFamily: "Poppins-Bold"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("Contiune As A Guest",
                          style: TextStyle(
                              color: Color(0xFFFFC400),
                              fontFamily: "Poppins-Bold")),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
