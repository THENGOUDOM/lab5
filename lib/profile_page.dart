import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorModel = context.watch<ColorModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Your Favorite Color")),
      body: Container(
        color: colorModel.selectedColor,
        child: const Center(
          child: Text(
            "This is your favorite color!",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}