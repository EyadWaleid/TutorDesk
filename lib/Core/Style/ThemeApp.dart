import 'package:flutter/material.dart';
import 'package:tutordesk/Core/Style/coloursExtention.dart';

import 'AppColours.dart';

class ThemeApp {
  ThemeApp._();

  static ThemeData lightTheme = ThemeData(
      extensions: [
        TutorDeskColours(backgroundColour: AppColors.backgroundLightColour,
            containerColour: AppColors.containerLightColour,
            enabledButtonColour: AppColors.enabledButtonLightColour,
            textColour: AppColors.textLightColour,
            textGrey: AppColors.lightTextGrey,
            primaryColour: AppColors.primaryLightColour,)
      ]
  );
  static ThemeData darkTheme = ThemeData(
      extensions: [
        TutorDeskColours(backgroundColour: AppColors.backgroundDarkColour,
            containerColour: AppColors.containerDarkColour,
            enabledButtonColour: AppColors.enabledButtonDarkColour,
            textColour: AppColors.textDarkColour,
            textGrey: AppColors.darkTextGrey,
            primaryColour: AppColors.primaryDarkColour,)
      ]
  );
}