import 'package:diseno/screens/home_screen.dart';
import 'package:diseno/screens/scroll_design.dart';
import 'package:flutter/material.dart';

import 'package:diseno/screens/basic-design.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Material App',
        initialRoute: 'home_screen',
        routes: {
          'basic_design': ( _ ) => BasicDesignScreen(),
          'scroll_screen': ( _ ) => ScrollScreen(),
          'home_screen': ( _ ) => HomeScreen(),
        },
    );
  }
}
