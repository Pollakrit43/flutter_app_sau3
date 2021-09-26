import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau3/views/login_ui.dart';
import 'package:flutter_app_sau3/views/new_account_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.appStore,
                      size: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                ),
                child: Row(
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                ),
                child: Row(
                  children: [
                    Text(
                      'your',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                ),
                child: Row(
                  children: [
                    Text(
                      'adventure',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 180,
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
                  'Log in',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width - 160.0,
                      60.0,
                    ),
                    primary: Colors.yellow[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        60.0,
                      ),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don\'t have account?',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewAccountUI(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up here',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
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
