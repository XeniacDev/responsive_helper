import 'package:flutter/material.dart';
import 'package:size_configure/size_configure.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfigure().int(constraints, orientation);
            return MaterialApp(
              title: 'SizeConfig Package Example',
            );
          },
        );
      },
    );
  }
}
