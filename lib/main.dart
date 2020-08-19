import 'package:flutter/material.dart';
import 'package:calcu_list/ui/screens/home.dart';
import 'package:calcu_list/ui/values/routes.dart' as Routes;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider<CustomViewModel>(
    //       builder: (context) => CustomViewModel(),
    //     ),
    //   ],
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(primarySwatch: Colors.deepPurple),
    //     home: HomeScreen(),
    //   ),
    // )

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: Routes.routes,
      home: HomeScreen(),
    );
  }
}
