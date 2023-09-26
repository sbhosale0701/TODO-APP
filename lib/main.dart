import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();

  // Open a Hive box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a custom primary color
    const customPrimaryColor = Color(0xFFDFC7DF);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: MaterialColor(customPrimaryColor.value, <int, Color>{
          50: customPrimaryColor,
          100: customPrimaryColor,
          200: customPrimaryColor,
          300: customPrimaryColor,
          400: customPrimaryColor,
          500: customPrimaryColor,
          600: customPrimaryColor,
          700: customPrimaryColor,
          800: customPrimaryColor,
          900: customPrimaryColor,
        }),
      ),
    );
  }
}
