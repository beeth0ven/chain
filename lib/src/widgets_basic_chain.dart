
import 'package:flutter/widgets.dart';

import 'core.dart';

extension WidgetsBasic on Chain {

  Chain center({ 
    Key key, 
    double widthFactor, 
    double heightFactor 
  }) =>
    this.add((_, child) => Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: child
    ));

  Chain container({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Widget child,
    Clip clipBehavior = Clip.none,
  }) => 
    this.add((_, child) => Container(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      clipBehavior: clipBehavior,
    ));

  Chain column({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children = const <Widget>[],
  }) =>
    this.add((_, __) => Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children
    ));
  
}