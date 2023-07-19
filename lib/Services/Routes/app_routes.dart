part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const unknown404 = _Paths.unknown404;
  static const friends = _Paths.friends;
  static const friend = friends + _Paths.friend;
}

abstract class _Paths {
  static const unknown404 = '/404';
  static const friends = '/friends';
  static const friend = '/friend';

}