import 'package:flutter/cupertino.dart';

class navBarKey {
  navBarKey._();

  static final GlobalKey _key = GlobalKey();

  static GlobalKey getkey() => _key;
}
