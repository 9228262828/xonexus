class AppConstants {
  static const String appName = 'XO ';
  static const String appTagline = 'Nexus ';
  static const Duration aiDelay = Duration(milliseconds: 600);
  static const Duration cellAnimDuration = Duration(milliseconds: 400);
  static const Duration winLineDuration = Duration(milliseconds: 600);
  static const Duration uiTransition = Duration(milliseconds: 300);
}

enum Player { x, o, none }

enum GameMode { pvp, pvai }

enum Difficulty { easy, medium }

enum GameState { playing, won, draw }
