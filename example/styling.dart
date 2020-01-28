import 'package:flutter/material.dart';
import 'package:size_configure/size_configure.dart';

/*

  Notice:
  I'm using Pixel 3 XL as the main device to config the block sizes:
  - Vertical Block Size: 7.9 (and 8.4 if it's full-screen)
  - Horizontal Block Size: 4.1
  ---------------------------------------
  Usage:
  - use textSizeMultiplier to set the Text size
  - use imageSizeMultiplier to set the Image and Icon size
  - use heightMultiplier to set height size
  - use widthMultiplier to set weight size

  Example:
  If you want to set the text size to 28
  Divide 28 to 7.9 (because it's text, so we use 'Vertical Block Size')
  and then multiply it textSize Multiplier

*/

class AppTheme {
  AppTheme._();

  static final ThemeData theme = new ThemeData(textTheme: textTheme);

  static final TextTheme textTheme = new TextTheme(
    title: _title,
    subtitle: _subTitle,
    button: _button,
  );

  static final TextStyle _title = TextStyle(
    color: Colors.black,
    // The font size I want is 20 so I divide 20 to 7.9 and then multiply it to text Size Multiplier
    fontSize: 2.5 * SizeConfigure.textSizeMultiplier, // 20
  );

  static final TextStyle _subTitle = TextStyle(
    color: Colors.grey,
    // The font size I want is 15 so I divide 15 to 7.9 and then multiply it to text Size Multiplier
    fontSize: 1.8 * SizeConfigure.textSizeMultiplier, // 15
  );

  static final TextStyle _button = TextStyle(
    color: Colors.blue,
    // The font size I want is 12 so I divide 12 to 7.9 and then multiply it to text Size Multiplier
    fontSize: 1.5 * SizeConfigure.textSizeMultiplier, // 12
  );

}

// More Example
class MoreExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: null,
    );
  }
}
