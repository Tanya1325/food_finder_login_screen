import 'package:flutter/material.dart';
import 'package:food_finder_login_screen/customclippath.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(children: <Widget>[
            ClipPath(
              clipper: CustomPathClipper1(),
              child: Container(
                color: Colors.pink,
                height: height / 2,
                width: width,
              ),
            ),
            ClipPath(
              clipper: CustomPathClipper2(),
              child: Container(
                color: Colors.lightGreen,
                height: height / 2.1,
                width: width,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Food Finder',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Image.asset('assets/donuts.png',
                    height: height / 6, width: height / 6, fit: BoxFit.fill),
                SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20.0,
                        width: 1.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                focusColor: Colors.black,
                                prefixIcon:
                                    Icon(Icons.email, color: Colors.black),
                                hintText: 'email@address.com',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                focusColor: Colors.black,
                                prefixIcon: Icon(Icons.lock_outline,
                                    color: Colors.black),
                                hintText: '.........',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                SizedBox(
                  height: height / 15,
                  width: width / 3,
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Login', style: TextStyle(color: Colors.white)),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.pink,
                  ),
                )
              ],
            )
          ])
        ],
      ),
    ));
  }
}
