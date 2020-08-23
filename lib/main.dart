import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/views/flower_view.dart';
import 'package:StateManagement/views/flower_with_provider_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//void main() => runApp(MyApp());

// declaring for provider
/*
void main() => runApp(ChangeNotifierProvider(
      create: (context) => FlowerListForProviderModel(),
      child: MyApp(),
    ));
*/
// or multi provider
void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FlowerListForProviderModel(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'State Management App',
        //home: FlowerView()
        home: FlowerWithProviderView());
  }
}
