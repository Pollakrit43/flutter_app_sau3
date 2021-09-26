import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau3/views/login_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewAccountUI extends StatefulWidget {
  const NewAccountUI({Key? key}) : super(key: key);

  @override
  _NewAccountUIState createState() => _NewAccountUIState();
}

class _NewAccountUIState extends State<NewAccountUI> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFF424552),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'New',
                                  style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Row(
                              children: [
                                Text(
                                  'Account',
                                  style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 90.0, top: 20.0),
                                child: Text(
                                  '1 ',
                                  style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 27.0),
                                child: Text(
                                  '/ 2',
                                  style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 95.0),
                            child: Text(
                              'STEPS',
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 28.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Icon(
                      FontAwesomeIcons.link,
                      size: 60.0,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Text(
                          'Upload a profile picture',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 95.0),
                        child: Text(
                          '(optional)',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                child: TextField(
                  style: TextStyle(
                    color: Color(0xFFE38D00),
                  ),
                  decoration: InputDecoration(
                    labelText: 'NAME',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                        fontFamily: 'Kanit',
                        color: Colors.white,
                        fontSize: 20.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE38D00)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE38D00)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                child: TextField(
                  style: TextStyle(
                    color: Color(0xFFE38D00),
                  ),
                  decoration: InputDecoration(
                    labelText: 'USER',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                        fontFamily: 'Kanit',
                        color: Colors.white,
                        fontSize: 20.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE38D00)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE38D00)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Username already in use.',
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginUI(),
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 20.0,
                  fixedSize:
                      Size(MediaQuery.of(context).size.width - 140.0, 55.0),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not the first time here ?  ',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewAccountUI(),
                        ),
                      );
                    },
                    child: Text(
                      'Log in.',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[100],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
