// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/decorations.dart';
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

final defaultTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'SF Pro Display',
  appBarTheme: _appBarTitleTheme,
  bottomNavigationBarTheme: _bottomNavigationBarTheme,
  cardTheme: _cardTheme,
  dialogTheme: _dialogTheme,
  dividerTheme: _dividerTheme,
  elevatedButtonTheme: _elevatedButtonThemeDefault,
  inputDecorationTheme: _inputDecorationTheme,
  listTileTheme: _listTileTheme,
  primaryColor: colors.brand,
  primarySwatch: colors.materialWhite,
  tabBarTheme: _tabBarTheme,
  textButtonTheme: _textButtonTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

const _appBarTitleTheme = AppBarTheme(
  elevation: 0.0,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.black,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ),
  titleTextStyle: TextStyle(
    color: Colors.black,
    fontSize: 15,
  ),
  centerTitle: true,
  actionsIconTheme: IconThemeData(
    color: colors.brand,
  ),
  iconTheme: IconThemeData(
    color: colors.blue,
  ),
);

const _bottomNavigationBarText = TextStyle(
  fontSize: 12.0,
  fontFamily: 'Roboto',
);

const _bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: colors.brand,
  selectedLabelStyle: _bottomNavigationBarText,
  unselectedItemColor: colors.gray,
  unselectedLabelStyle: _bottomNavigationBarText,
  unselectedIconTheme: IconThemeData(color: colors.gray),
);

const _cardTheme = CardTheme(
  color: colors.grayLight,
  elevation: 0.0,
  margin: EdgeInsets.all(0.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(borderRaduisSmall),
  ),
);

const _dividerTheme = DividerThemeData(
  color: colors.gray,
  space: 0.0,
);

const _dialogTheme = DialogTheme(
  backgroundColor: Colors.transparent,
  alignment: Alignment.bottomCenter,
  actionsPadding: EdgeInsets.only(top: 10.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(borderRaduisDefault),
  ),
  contentTextStyle: TextStyle(
    fontSize: 15.0,
    color: Colors.black,
  ),
);

final _elevatedButtonThemeDefault = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 15.0,
        color: Colors.white,
      ),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder?>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          borderRaduisDefault,
        ),
      ),
    ),
  ),
);

const _inputDecorationTheme = InputDecorationTheme(
  constraints: BoxConstraints(
    maxHeight: heightFieldText,
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
  focusColor: colors.brand,
  labelStyle: TextStyle(
    color: colors.gray,
    fontSize: 15.0,
  ),
  floatingLabelStyle: TextStyle(color: colors.brand),
  errorStyle: TextStyle(
    color: colors.brand,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: colors.grayLight,
    ),
    borderRadius: BorderRadius.all(borderRaduisDefault),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: colors.brand,
    ),
    borderRadius: BorderRadius.all(borderRaduisDefault),
  ),
  suffixIconColor: colors.brand,
);

const _listTileTheme = ListTileThemeData(
  minVerticalPadding: 0.0,
  contentPadding: EdgeInsets.zero,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(borderRaduisSmall),
  ),
);

const _tabBarTheme = TabBarTheme(
  labelColor: Colors.black,
  labelStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  unselectedLabelColor: colors.gray,
  unselectedLabelStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  indicatorColor: colors.brand,
  indicator: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: colors.brand,
        width: 2.0,
      ),
    ),
  ),
);

final _textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(EdgeInsets.zero),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 15.0,
        color: Colors.black,
        height: 1.0,
      ),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder?>(
      const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          borderRaduisDefault,
        ),
      ),
    ),
  ),
);
