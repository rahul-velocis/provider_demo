import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/constants/color_constants.dart';
import 'package:provider_demo/provider/color_provider.dart';

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
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            Text('Color Page'),
            Text(
              context.watch<ColorProvider>().colorName,
              style: TextStyle(
                color: context.watch<ColorProvider>().color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: context.watch<ColorProvider>().color,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        itemCount: ColorConstants.colorNames.length,
        itemBuilder: (context, index) {
          final colorName = ColorConstants.colorNames[index];
          final color = getColor(colorName);
          return InkWell(
            onTap: () {
              context.read<ColorProvider>().setColor(color);
              context.read<ColorProvider>().setColorName(colorName);
            },
            child: Container(
              decoration: BoxDecoration(
                color: color,

                borderRadius: BorderRadius.circular(20),
                border: BoxBorder.all(color: Colors.white, width: 5),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: 100,
              child: Text(
                colorName,
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
