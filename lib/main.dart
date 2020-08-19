import 'package:calcu_list/core/view_models/main_view_model.dart';
import 'package:calcu_list/ui/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:calcu_list/ui/screens/home.dart';
import 'package:calcu_list/ui/values/routes.dart' as Routes;
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainViewModel>(
          create: (context) => MainViewModel.instance(),
        ),
      ],
      child: MaterialApp(
        title: APP_NAME,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: HomeScreen(),
      ),
    );
  }
}
