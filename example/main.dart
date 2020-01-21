import 'package:flutter/material.dart';
import 'package:size_config_package/size_config_package.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().int(constraints, orientation);
            return MaterialApp(
              title: 'SizeConfig Package Example',
            );
          },
        );
      },
    );
  }
}
