# gradient_elevated_buttons
A Flutter package that provides a customizable ElevatedButton with a gradient background and stroke.

## Features
    1. Customizable background gradient
    2. Customizable stroke gradient
    3. Customizable border radius
    4. Customizable border width
    5. Customizable child widget
    6. Customizable elevation

## Getting started

To use this package, add gradient_elevated_buttons as a dependency in your pubspec.yaml file.



## Usage


```dart
import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

GradientElevatedButtons(
  backgroundGradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.blue, Colors.green],
  ),
  strokeGradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.blueAccent, Colors.greenAccent],
  ),
  onPressed: () {
    //TODO: Implement onPressed function
  },
  borderWidth: 2.0,
  child: Text('Child Widget'),
  borderRadius: 16.0,
  elevation: 8.0,
)
```


## Future Plans

We plan to add the following features in future releases:

- Figma-like customizability
- Improved performance and scalability
- Add Abstraction and documentation
- Add test case

Stay tuned for updates!

## Additional information
For more information on how to use this package, check out the example folder.

If you find any bugs or would like to contribute to this package, please file an issue or create a pull request on the [GitHub repository.](https://github.com/DeepeshKalura/gradient_elevated_buttons)
