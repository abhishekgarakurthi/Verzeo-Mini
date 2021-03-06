import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_drawer_example/page/startpage.dart';
import 'package:navigation_drawer_example/widget/navigation_drawer_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: startpage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      // endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text(MyApp.title),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
                child: Text("Welcome!!",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[600]))),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage(
                    'https://previews.123rf.com/images/jpgon/jpgon1707/jpgon170701780/82579283-illustration-of-a-long-shadow-shopping-bag-with-a-male-avatar.jpg'),
              ),
            ),
          )
        ],
      )));
}
