import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color primary;
  final Color secondary;
  final Color action;
  final Color cardBackground;
  final Color shadowColor;
  final Color textFormFieldColor;
  final TextStyle medium;
  final TextStyle regular;

  const CustomTheme({
    required this.primary,
    required this.secondary,
    required this.action,
    required this.cardBackground,
    required this.shadowColor,
    required this.medium,
    required this.regular,
    required this.textFormFieldColor
     
  });

  @override
  CustomTheme copyWith({
    Color? primary,
    Color? secondary,
    Color? action,
    Color? cardBackground,
    Color? shadowColor,
    Color? textFormFieldColor,
     TextStyle? medium,
  TextStyle? regular,
  }) =>
      CustomTheme(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        action: action ?? this.action,
        cardBackground: cardBackground ?? this.cardBackground,
        shadowColor: shadowColor ?? this.shadowColor,
        textFormFieldColor: textFormFieldColor ?? this.textFormFieldColor,
        medium: medium ?? this.medium,
        regular: regular ?? this.regular,
      );

  @override
  CustomTheme lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) {
      return this;
    }
    return CustomTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      action: Color.lerp(action, other.action, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
        textFormFieldColor:Color.lerp(textFormFieldColor, other.textFormFieldColor, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      regular: TextStyle.lerp(regular, other.regular, t)!,
    );
  }
}

CustomTheme customTheme(BuildContext context) => Theme.of(context).extension<CustomTheme>()!;
