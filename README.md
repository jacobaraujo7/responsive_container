# responsivecontainer

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

### About me

Jacob Moura
jacobaraujo7@gmail.com

For news on the world Flutter -> [flutterando.com.br](https://flutterando.com.br).

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
