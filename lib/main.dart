import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_model.dart';
import 'home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ColorModel(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}