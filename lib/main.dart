import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/routes/routes.dart';
import 'package:provider_test/screens/screem_cart.dart';
import 'package:provider_test/screens/screen_home.dart';
import 'package:provider_test/serives/data_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DataClass(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: "/",
          routes: {
            routeHome: (context) => const ScreenHome(),
            routeCart: (context) => const ScreenCart(),
          },
        ));
  }
}
