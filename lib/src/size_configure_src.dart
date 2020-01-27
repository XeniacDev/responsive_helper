part of size_configure;

class SizeConfigure {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double textSizeMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    }
    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    textSizeMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
    widthMultiplier = _blockSizeVertical;

    print('Vertical Block Size: ' + _blockSizeVertical.toString());
    print('Horizontal Block Size: ' + _blockSizeHorizontal.toString());
  }
}
