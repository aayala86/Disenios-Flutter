import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/page/basico_page.dart';
import 'package:disenos/src/page/botones_pages.dart';
import 'package:disenos/src/page/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos',
      initialRoute: 'botones',
      routes: {
        'basico'  : (BuildContext context) => BasicoPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },
    );
  }
}