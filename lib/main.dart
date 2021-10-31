import 'package:bullungthong/config/my_setting.dart';
import 'package:bullungthong/states/authen.dart';
import 'package:bullungthong/states/homepage.dart';
import 'package:bullungthong/states/term_of_service.dart';
import 'package:flutter/material.dart';


String? initialRoute;

void main() {
  initialRoute = MySetting.routeHomePage;
  runApp(MyApp());
}

final Map<String, WidgetBuilder> map = {
  '/homepage': (BuildContext context) => HomePage(),
  '/authen': (BuildContext context) => Authen(),
  '/termofservice': (BuildContext context) => TermOfService(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MySetting.appName,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}