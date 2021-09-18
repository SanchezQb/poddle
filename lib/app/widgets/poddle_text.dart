import 'package:flutter/material.dart';
import 'package:podcast_app/app/styles/text_styles.dart';

class PoddleText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const PoddleText.heading1(this.text) : style = heading1Style;
  const PoddleText.heading2(this.text) : style = heading2Style;
  const PoddleText.heading3(this.text) : style = heading3Style;
  const PoddleText.headline(this.text) : style = headlineStyle;
  const PoddleText.subHeading(this.text) : style = subHeadingStyle;
  const PoddleText.subHeadline(this.text) : style = subHeadlineStyle;
  const PoddleText.caption(this.text) : style = captionStyle;

  PoddleText.body(this.text, {Color color = Colors.black})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
