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
  and then multiply it to textSize Multiplier
  Or
  If you want to set the width to 200
  Divide 200 to 4.1 (because it's horizontal, so we use 'Horizontal Block Size')
  and then multiply it to imageSizeMultiplier or widthMultiplier

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

// =============================================================================
// More Example ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
// =============================================================================

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
          centerTitle: true,
          title: Text(
            'Example',
            style: TextStyle(
                fontSize: 2.5 * SizeConfigure.textSizeMultiplier), // 20
          )),
      body: new Stack(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(
                // 15
                3.6 * SizeConfigure.imageSizeMultiplier), // all: 15
            child: new Row(
              children: <Widget>[
                new Image.asset(
                  'assets/images/xeniac.png',
                  // width: 200,
                  // height: 200,

                  /*
                  Here I want my image size to be 200*200
                  so first, I divide 200 to 7.9
                  and then I multiple results (48.7) to SizeConfigure.textSizeMultiplier
                  */

                  width: 48.7 * SizeConfigure.imageSizeMultiplier, // 200
                  height: 48.7 * SizeConfigure.imageSizeMultiplier, // 200
                  fit: BoxFit.contain,
                ),
                new Image.asset(
                  'assets/images/xeniac.png',
                  // width: 170,
                  // height: 170,
                  width: 41.4 * SizeConfigure.imageSizeMultiplier, // 170
                  height: 41.4 * SizeConfigure.imageSizeMultiplier, // 170
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          new Padding(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 180),
              child: new Column(
                children: <Widget>[
                  new Image.asset(
                    'assets/images/xeniac.png',
                    // width: 180,
                    // height: 180,
                    width: 43.9 * SizeConfigure.imageSizeMultiplier, // 180
                    height: 43.9 * SizeConfigure.imageSizeMultiplier, // 180
                    fit: BoxFit.contain,
                  ),
                ],
              )),
          new Padding(
              padding: EdgeInsets.only(
                  // top: 450,
                  // right: 20,
                  // left: 20
                  top: 56.9 * SizeConfigure.heightMultiplier, // 450
                  right: 4.8 * SizeConfigure.widthMultiplier, // 20
                  left: 4.8 * SizeConfigure.widthMultiplier // 20
                  ), // 20
              child: new Text(
                'This is a simple example to show how to SizeConfigure package works',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 1.8 * SizeConfigure.textSizeMultiplier // 15),
                    ),
              )),
        ],
      ),
    );
  }
}
