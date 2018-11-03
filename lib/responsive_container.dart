library responsive_container;

import 'package:flutter/material.dart';


class ResponsiveContainer extends StatelessWidget {

    /// The [child] contained by the container.
  ///
  /// If null, and if the [constraints] are unbounded or also null, the
  /// container will expand to fill all available space in its parent, unless
  /// the parent provides unbounded constraints, in which case the container
  /// will attempt to be as small as possible.
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  /// Align the [child] within the container.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry alignment;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  /// This padding is in addition to any padding inherent in the [decoration];
  /// see [Decoration.padding].
  final EdgeInsetsGeometry padding;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry margin;

  /// [widthPercent] value percent of screen total width.
  final double widthPercent;

   /// [heightPercent] value percent of screen total height.
  final double heightPercent;

  const ResponsiveContainer({Key key, this.alignment, this.padding, this.margin, this.child, @required this.widthPercent, @required this.heightPercent}) : super(key: key);

double percent(double value, double porcentagem) {
    return (value * porcentagem) / 100;
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var width = size.width; 
    var height = size.height; 

    return Container(
      padding: padding,
      margin: margin,
      alignment: alignment,
      child: child,
      width: percent(width, widthPercent),
      height: percent(height, heightPercent),
    );
  }
}
