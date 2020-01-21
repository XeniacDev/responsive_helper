# size_configure
SizeConfigure package helps you to make your Flutter app responsive.
Just import the package and then use it to make your app responsive.

## Usage

```
  - use textSizeMultiplier to set Text size
  - use imageSizeMultiplier to set Image size
  - use heightMultiplier to set height size
  - use weightMultiplier to set weight size
  
  For example:
    If you want to set the text size to 28
    Divide 28 to 7.9 (because it's text, so we use 'Vertical Block Size')
    and then multiply it textSize Multiplier
```
if you need more examples, See [setSizeExample.dart](https://github.com/YRlp98/size_config_package/blob/master/example/setSizeExample.dart).


**Notice:** In this example I used `Google Pixel 3 XL` as the main device to config the block sizes. So the `Vertical Block Size: 7.9` and the `Horizontal Block Size: 4.1` is.
But, you can use any devices you want.