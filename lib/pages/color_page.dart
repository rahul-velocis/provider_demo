import 'package:flutter/material.dart';
import 'package:provider_demo/constants/color_constants.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  Color getColor(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'purple':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Page')),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        itemCount: ColorConstants.colorNames.length,
        itemBuilder: (context, index) {
          final color = ColorConstants.colorNames[index];
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: getColor(color),

                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: 100,
              child: Text(
                color,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
