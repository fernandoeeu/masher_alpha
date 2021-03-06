import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './SignInWithEmail.dart';
import '../Auth.dart';
import '../ProfileScreen.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  

    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new ProfileScreen(detailsUser: details),
      ),
    );

    return userDetails;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1528615141309-53f2564d3be8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
                    fit: BoxFit.cover,
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Busca por receitas',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFE11948)),
                          ),
                          Text(
                            'como você nunca viu',
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 260.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: RaisedButton(
                                  onPressed: () => _signInComGoogle()
                                      ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.google,
                                          color: Color(0xffce107c)),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Entrar com conta do Google',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 260.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: RaisedButton(
                                  onPressed: () => print('sign in'),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.facebook,
                                          color: Color(0xFF3b5998)),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Entrar com Facebook',
                                        textAlign: TextAlign
                                            .justify, // como isso funciona?
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 260.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignInWithEmail(),
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Color(0xffffffff),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.solidEnvelope,
                                          color: Color(0xFF4caf50)),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Entrar com Email',
                                        textAlign: TextAlign
                                            .justify, // como isso funciona?
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
      ),
    );
  }
}

class UserDetails {
  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;
  UserDetails(this.providerDetails, this.userEmail, this.userName,
      this.photoUrl, this.providerData);
}

class ProviderDetails {
  final String providerDetails;
  ProviderDetails(this.providerDetails);
}
