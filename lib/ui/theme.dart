import 'package:flutter/material.dart';

abstract class AppTheme {
  // Thèmes
  Color get getPrimary;
  Color get getSecondary;
  Color get getTertiary;
  Color get getButtonColor;
  Color get getButtonTextColor;
  Color get getFrameColor;

  // Styles
  TextStyle get getPopupGenericTitle;
  TextStyle get getPopupGenericLabel;
  TextStyle get getPupGenericTextButton;

  static int clamp(int value) => value.clamp(0, 255);

  static int offsetAlpha(Color color, double alphaFactor) =>
      clamp((color.a * 255 * alphaFactor).round());

  static int offsetR(Color color, int r) => clamp((color.r * 255).round() + r);

  static int offsetG(Color color, int g) => clamp((color.g * 255).round() + g);

  static int offsetB(Color color, int b) => clamp((color.b * 255).round() + b);

  static Color addToColor({
    required Color color,
    int? r,
    int? g,
    int? b,
    double? alphaFactor,
  }) {
    var result = color;

    if (alphaFactor != null) {
      result = result.withAlpha(offsetAlpha(result, alphaFactor));
    }
    if (r != null) {
      result = result.withRed(offsetR(result, r));
    }
    if (g != null) {
      result = result.withGreen(offsetG(result, g));
    }
    if (b != null) {
      result = result.withBlue(offsetB(result, b));
    }

    return result;
  }
}

// ===========================================
// =====---------------------------------=====
// =====--------   GAMES THEME   --------=====
// =====---------------------------------=====
// ===========================================

class GameLifeThemes implements AppTheme {
  // Gestion des couleurs de la grille
  final Color _gridBackground = const Color.fromARGB(255, 27, 24, 19);
  final Color _gridLine = Colors.black;
  final Color _cellsColor = Colors.white;
  final Color _cellsPatternColor = const Color.fromARGB(200, 125, 125, 125);
  Color get getGridBackgroundColor => _gridBackground;
  Color get getGridLineColor => _gridLine;
  Color get getCellsColor => _cellsColor;
  Color get getCellsPatternColor => _cellsPatternColor;

  // Gestion des couleurs des boutons de validation/annulation
  final Color _buttonColorOK = const Color.fromARGB(255, 160, 100, 50);
  final Color _buttonColorExit = const Color.fromARGB(255, 106, 94, 81);
  Color get getButtonColorOK => _buttonColorOK;
  Color get getButtonColorExit => _buttonColorExit;

  // Gestion des couleurs de séléction/déselection du menu pour le workshop
  final Color _selectedMenu = const Color.fromARGB(255, 178, 120, 48);
  final Color _unselectedMenu = const Color.fromARGB(255, 120, 100, 70);
  Color get getSelectedMenu => _selectedMenu;
  Color get getUnselectedMenu => _unselectedMenu;

  // Gestion des couleurs de séléction/déselection des objets pour le workshop
  final Color _selectedCard = const Color.fromARGB(255, 198, 160, 112);
  final Color _unselectedCard = const Color.fromARGB(255, 164, 148, 128);
  Color get getSelectedCard => _selectedCard;
  Color get getUnselectedCard => _unselectedCard;

  // Gestion des couleurs de séléction/déselection pour les icons de menu du bandeau inférieur
  final Color _iconSettings = const Color.fromARGB(255, 192, 192, 192);
  final Color _selectedIconSettings = Colors.deepPurple;
  Color get getIconSettings => _iconSettings;
  Color get getselectedIconSettings => _selectedIconSettings;

  // Gestion des couleurs pour le bandeau supérieur informatif
  final Color _informationBackground = const Color.fromARGB(100, 0, 0, 0);
  Color get getInformationBackground => _informationBackground;

  // Thèmes générales
  final Color _primary = const Color.fromARGB(255, 56, 52, 52);
  final Color _secondary = const Color.fromARGB(255, 200, 190, 160);
  final Color _tertiary = const Color.fromARGB(60, 255, 255, 255);
  final Color _buttonColor = const Color.fromARGB(255, 106, 94, 81);
  final Color _buttonTextColor = Colors.white;
  final Color _frameColor = const Color.fromARGB(255, 225, 225, 200);

  @override
  Color get getPrimary => _primary;

  @override
  Color get getSecondary => _secondary;

  @override
  Color get getTertiary => _tertiary;

  @override
  Color get getButtonColor => _buttonColor;

  @override
  Color get getButtonTextColor => _buttonTextColor;

  @override
  Color get getFrameColor => _frameColor;

  @override
  TextStyle get getPopupGenericTitle => popupTitle();

  @override
  TextStyle get getPopupGenericLabel => popupMenuLabel();

  @override
  TextStyle get getPupGenericTextButton => textButtonStyle();

  GameLifeThemes() {
    _setTheme();
  }

  void _setTheme() {
    // Au besoin mettre ici le code pour d'autres thèmes
  }

  /*
    Fonts pour les informations supplémentaires
  */
  Color get getPopupTitleColor => const Color.fromARGB(255, 192, 192, 192);
  TextStyle popupTitle() {
    return TextStyle(
      fontFamily: 'Orbitron',
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: getPopupTitleColor,
    );
  }

  TextStyle popupContentLabel() {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 12,
      color: const Color.fromARGB(255, 237, 237, 237),
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle popupMenuLabel() {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      color: const Color.fromARGB(255, 237, 237, 237),
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle textButtonStyle() {
    return TextStyle(
      fontFamily: 'BebasNeue',
      fontSize: 20,
      color: Colors.white,
    );
  }
}
