import 'package:flutter/material.dart';
import 'package:luminartest2/controller/HomepageController.dart';
import 'package:luminartest2/controller/productpage_controller.dart';
import 'package:luminartest2/view/homepage/homepage.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomepageController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductpageController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
