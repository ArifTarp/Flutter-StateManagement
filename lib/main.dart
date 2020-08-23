import 'package:flutter/material.dart';
import 'package:StateManagement/models/flower.dart';
import 'package:StateManagement/views/vanilla/flower_with_vanilla_view.dart';
import 'package:StateManagement/views/value_notifier/flower_with_value_notifier_view.dart';
import 'package:StateManagement/views/provider/flower_with_provider_view.dart';
import 'package:provider/provider.dart';
import 'models/flower_for_provider.dart';

// for vanilla and value notifier
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
        //home: FlowerWithVanillaView()
        //home: FlowerWithValueNotifierView()
        home: FlowerWithProviderView()
        );
  }
}
