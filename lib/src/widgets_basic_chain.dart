
import 'package:flutter/widgets.dart';

import 'core.dart';

extension WidgetsBasic on Chain {

  Chain align({
    Key key,
    AlignmentGeometry alignment = Alignment.center,
    double widthFactor,
    double heightFactor,
  }) =>
    this.add((context, child) => Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: child
    ));

  Chain aspectRatio({
    Key key,
    double aspectRatio,
  }) =>
    this.add((context, child) => AspectRatio(
      key: key,
      aspectRatio: aspectRatio,
      child: child
    ));

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

  Chain constrainedBox({
    Key key,
    BoxConstraints constraints,
  }) =>
    this.add((context, child) => ConstrainedBox(
      key: key,
      constraints: constraints,
      child: child
    ));

  Chain expanded({
    Key key,
    int flex = 1,
  }) =>
    this.add((context, child) => Expanded(
      key: key,
      flex: flex,
      child: child
    ));

  Chain ignorePointer({
    Key key, 
    bool ignoring, 
    bool ignoringSemantics,
  }) =>
    this.add((context, child) => IgnorePointer(
      key: key,
      ignoring: ignoring,
      ignoringSemantics: ignoringSemantics,
      child: child
    ));
  
  Chain opacity({
    Key key,
    @required double opacity,
    bool alwaysIncludeSemantics = false,
  }) =>
    this.add((_, child) => Opacity(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: child
    ));

  Chain padding({
    Key key,
    @required EdgeInsetsGeometry padding,
  }) =>
    this.add((context, child) => Padding(
      key: key,
      padding: padding,
      child: child
    ));

  Chain row({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children = const <Widget>[],
  }) =>
    this.add((_, __) => Row(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children
    ));

  Chain sizedBox({
    Key key,
    double width, 
    double height,
  }) =>
    this.add((context, child) => SizedBox(
      key: key,
      width: width, 
      height: height,
      child: child
    ));

  Chain sizedBoxExpand({
    Key key,
  }) =>
    this.add((context, child) => SizedBox.expand(
      key: key,
      child: child
    ));

  Chain sizedBoxShrink({
    Key key,
  }) =>
    this.add((context, child) => SizedBox.shrink(
      key: key,
      child: child
    ));

  Chain sizedBoxFromSize({
    Key key,
    Size size,
  }) =>
    this.add((context, child) => SizedBox.fromSize(
      key: key,
      size: size,
      child: child
    ));

  Chain text(
    String data, {
    Key key, 
    TextStyle style,
    StrutStyle strutStyle, 
    TextAlign textAlign, 
    TextDirection textDirection, 
    Locale locale, 
    bool softWrap, 
    TextOverflow overflow, 
    double textScaleFactor, 
    int maxLines, 
    String semanticsLabel, 
    TextWidthBasis textWidthBasis, 
    TextHeightBehavior textHeightBehavior
  }) =>
    this.add((context, child) => Text(
      data,
      key: key,
      style: style,
      strutStyle: strutStyle, 
      textAlign: textAlign, 
      textDirection: textDirection, 
      locale: locale, 
      softWrap: softWrap, 
      overflow: overflow, 
      textScaleFactor: textScaleFactor, 
      maxLines: maxLines, 
      semanticsLabel: semanticsLabel, 
      textWidthBasis: textWidthBasis, 
      textHeightBehavior: textHeightBehavior
    ));

}