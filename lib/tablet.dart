import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  final double width;
  const TabletScreen({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Tablet'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Center(
            child: Text('this is center text'),
          ),
        ],
      ),
    );
  }
}
