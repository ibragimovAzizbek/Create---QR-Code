import 'package:flutter/material.dart';
import 'package:qr_code_app/core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter QR Code Generator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: RouterCont.inherentce.onGenerateRoute,
      initialRoute: '/home',
    );
  }
}
