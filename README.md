![GitHub](https://img.shields.io/github/license/yrlp98/responsive_helper?style=flat-square)  ![Pub Version](https://img.shields.io/pub/v/responsive_helper?style=flat-square) ![GitHub stars](https://img.shields.io/github/stars/yrlp98/responsive_helper?style=flat-square)

# responsive_helper
ResponsiveHelper package helps you to make your Flutter app responsive.
Just import the package and then use it to make your app responsive.

## Usage

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wrap with LayoutBuilder: It will give us the screen height and width
    return LayoutBuilder(
      builder: (context, constraints) {
        // Wrap with OrientationBuilder if you want your app to be landscape and portrait:
        return OrientationBuilder(
          builder: (context, orientation) {
            // Initialize the ResponsiveHelper
            ResponsiveHelper().init(constraints, orientation);
            return MaterialApp(
              theme: AppTheme.theme,
              title: 'ResponsiveHelper Package Examples',
            );
          },
        );
      },
    );
  }
}
```

```
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
```
if you need more examples, See [setSizeExample.dart](https://github.com/YRlp98/responsive_helper/blob/master/example/main.dart).


**Notice:** In this example I used `Google Pixel 3 XL` as the main device to config the block sizes.So the `Vertical Block Size: 7.9` and the `Horizontal Block Size: 4.1` is.
But, you can use any devices you want.
