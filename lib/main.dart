import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/data/profile_data.dart';
import 'package:flutter_ui_demo/model/profile.dart';
import 'package:flutter_ui_demo/ui/profile_top_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
          )),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Profile profile = fakeProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //그림자 없애기
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          '프로필',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        actions: [IconButton(icon: Icon(Icons.add_alert), onPressed: null)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProfileTop(profile),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('별로에요'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('괜찮아요'),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
