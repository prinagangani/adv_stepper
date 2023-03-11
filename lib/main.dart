import 'package:adv_stepper/screens/home/provider/home_provider.dart';
import 'package:adv_stepper/screens/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeView(),
        },
      ),
    ),
  );
}

