import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [Colors.red, Colors.blue, Colors.black];
    return GridView.count(
      crossAxisCount: 3,
      children: [
        GestureDetector(
          onTap: () {
            print('YES!');
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                color: colors[0] ?? Colors.grey,
                child: const Center(child: Text('0')),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            color: colors[1] ?? Colors.grey,
            child: const Text('1'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            color: colors[2] ?? Colors.grey,
            child: const Text('2'),
          ),
        )
      ],
    );
  }
}
