import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_model.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorModel = context.watch<ColorModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Select Favorite Color")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: colorModel.selectedColor,
            child: const Center(
              child: Text(
                "Preview",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Color Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _colorButton(context, Colors.red),
              _colorButton(context, Colors.green),
              _colorButton(context, Colors.blue),
              _colorButton(context, Colors.orange),
            ],
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfilePage()),
              );
            },
            child: const Text("Go to Second Page"),
          ),
        ],
      ),
    );
  }

  Widget _colorButton(BuildContext context, Color color) {
    return GestureDetector(
      onTap: () {
        context.read<ColorModel>().changeColor(color);
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}