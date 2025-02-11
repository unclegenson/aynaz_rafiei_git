import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  final double width;
  const MobileScreen({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text('title'),
            backgroundColor: Colors.amber,
          ),
          SliverList.separated(
            separatorBuilder: (context, index) {
              if (index % 8 == 2) {
                return Container(
                  height: 80,
                  color: Colors.amber,
                  child: Center(child: Text("advertisement")),
                );
              }
              return SizedBox.shrink();
            },
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text('title$index'),
                  subtitle: Text('this is subtitle'));
            },
          )
        ],
      ),
    );
  }
}
