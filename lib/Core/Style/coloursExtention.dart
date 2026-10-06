import 'package:flutter/material.dart';

  class TutorDeskColours extends ThemeExtension<TutorDeskColours> {
  Color backgroundColour;
  Color containerColour;
  Color textColour;
  Color enabledButtonColour;
  Color textGrey;
  Color primaryColour ;
  Color primaryBlack ;

  TutorDeskColours({
    required this.backgroundColour,
    required this.containerColour,
    required this.enabledButtonColour,
    required this.textColour,
    required this.textGrey,
    required this.primaryColour,
    required this.primaryBlack
  });

  @override
  ThemeExtension<TutorDeskColours> copyWith({
    Color? backgroundColour,
    Color? containerColour,
    Color? enabledButtonColour,
    Color? textColour,
    Color? textGrey,
    Color? primaryColour,
    Color? primaryBlack
  }) {
    return TutorDeskColours(
      backgroundColour: backgroundColour ?? this.backgroundColour,
      containerColour: containerColour ?? this.containerColour,
      enabledButtonColour: enabledButtonColour ?? this.enabledButtonColour,
      textColour: textColour ?? this.textColour,
      textGrey: textGrey ?? this.textGrey,
      primaryColour: primaryColour ?? this.primaryColour,
      primaryBlack: primaryBlack ?? this.primaryBlack,
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
      enabledButtonColour: Color.lerp(
        enabledButtonColour,
        other.enabledButtonColour,
        t,
      )!,
      textColour: Color.lerp(textColour, other.textColour, t)!,
      textGrey: Color.lerp(textGrey, other.textGrey, t)!, primaryColour: Color.lerp(primaryColour, other.primaryColour, t)!
        , primaryBlack: Color.lerp(primaryBlack, other.primaryBlack, t)!
    );
  }
}
