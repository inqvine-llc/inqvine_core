import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Color colorFromHex(String hexString) {
  final StringBuffer buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) {
    buffer.write('ff');
  }

  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

double getTextStyleRenderWidth(BuildContext context, List<String> family, TextStyle style) {
  final double deviceWidth = MediaQuery.of(context).size.width;

  String text = family.first;
  for (final String familyMemeber in family) {
    if (familyMemeber.length > text.length) {
      text = familyMemeber;
    }
  }

  final BoxConstraints constraints = BoxConstraints(maxWidth: deviceWidth, minHeight: 0.0, minWidth: 0.0);
  final RenderParagraph renderParagraph = RenderParagraph(
    TextSpan(
      text: text,
      style: style,
    ),
    maxLines: 1,
    textDirection: ui.TextDirection.ltr,
  );

  if (style.fontSize == null) {
    throw Exception("Style must have a non-null fontSize");
  }
  renderParagraph.layout(constraints);
  return renderParagraph.getMinIntrinsicWidth(style.fontSize!).ceilToDouble();
}
