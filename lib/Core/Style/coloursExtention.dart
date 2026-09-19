import 'package:flutter/material.dart';

  class TutorDeskColours extends ThemeExtension<TutorDeskColours> {
  Color backgroundColour;
  Color containerColour;
  Color textColour;
  Color enabledButtonColour;
  Color textGrey;
  Color alertTypeBar;

  TutorDeskColours({
    required this.backgroundColour,
    required this.containerColour,
    required this.alertTypeBar,
    required this.enabledButtonColour,
    required this.textColour,
    required this.textGrey,
  });

  @override
  ThemeExtension<TutorDeskColours> copyWith({
    Color? backgroundColour,
    Color? containerColour,
    Color? alertTypeBar,
    Color? enabledButtonColour,
    Color? textColour,
    Color? textGrey,
  }) {
    return TutorDeskColours(
      backgroundColour: backgroundColour ?? this.backgroundColour,
      containerColour: containerColour ?? this.containerColour,
      alertTypeBar: alertTypeBar ?? this.alertTypeBar,
      enabledButtonColour: enabledButtonColour ?? this.enabledButtonColour,
      textColour: textColour ?? this.textColour,
      textGrey: textGrey ?? this.textGrey,
    );
  }

  @override
  ThemeExtension<TutorDeskColours> lerp(
      covariant ThemeExtension<TutorDeskColours>? other,
      double t,
      ) {
    if (other is! TutorDeskColours) return this;
    return TutorDeskColours(
      backgroundColour: Color.lerp(
        backgroundColour,
        other.backgroundColour,
        t,
      )!,
      containerColour: Color.lerp(containerColour, other.containerColour, t)!,
      alertTypeBar: Color.lerp(alertTypeBar, other.alertTypeBar, t)!,
      enabledButtonColour: Color.lerp(
        enabledButtonColour,
        other.enabledButtonColour,
        t,
      )!,
      textColour: Color.lerp(textColour, other.textColour, t)!,
      textGrey: Color.lerp(textGrey, other.textGrey, t)!,
    );
  }
}
