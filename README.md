# Responsive Container

Use percentage for width and height values in any Widget


## Getting Started

- Add the dependency to your *"pubspec.yaml"* file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    responsive_container:
```

- Import package into your code

```dart
//...
import 'package:responsive_container/responsive_container.dart';
//...
```

### Usage

- You can set the widget height and width percentages from 0 to 100 (double)

```dart
ResponsiveContainer(
    heightPercent: 50.0, //value percent of screen total height
    widthPercent: 50.0,  //value percent of screen total width
    child: Container(color: Colors.red,), //any widget
)

```

### Full exemple

```dart
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Responsive Container"),),
        body: Center(

          child: ResponsiveContainer(
            heightPercent: 50.0, //value percent of screen total height
            widthPercent: 50.0,  //value percent of screen total width

            child: Container(color: Colors.red,), //any widget
          )
        ),
      )
    );
  }
}

```
![alt text](https://raw.githubusercontent.com/jacobaraujo7/responsive_container/master/screenshot.png)

## About me

- Jacob Moura <jacobaraujo7@gmail.com>

For news on the world Flutter -> [flutterando.com.br](https://flutterando.com.br).

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
