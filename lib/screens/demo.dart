import 'package:flutter/material.dart';
import 'package:loginpage/screens/logo.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/demo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: Text(
                    "Explore Demo Limited's Premier Logistics and Freight Services",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'sans-serif',
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            child: LogoWidget(),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFF35AADA),
                              Color(0xFF447093),
                              Color(0xFF445576),
                              Color(0xFF418EB6),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: Text(
                            'DEMO',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'sans-serif',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    padding: EdgeInsets.all(36.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE9F5FE),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            child: LogoWidget(),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'sans-serif',
                          ),
                        ),
                        Text(
                          'we are glad to see you again',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'PublicSans',
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 50.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 36.0),
                        Container(
                          width: 450,
                          height: 48,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF445A82),
                                Color(0xFF35A7D7),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'sans-serif',
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'sans-serif',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}