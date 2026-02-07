import 'package:active_ecommerce_seller_app/helpers/shared_value_helper.dart';
import 'package:flutter/material.dart';

// class LocaleProvider with ChangeNotifier {
//   Locale? _locale;
//   Locale get locale {
//     return _locale = Locale(app_mobile_language.$!, '');
//   }
//
//   void setLocale(String code) {
//     _locale = Locale(code, '');
//     notifyListeners();
//   }
// }
class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  // Set Arabic ('ar') as default if nothing is selected
  Locale get locale {
    if (_locale != null) return _locale!;
    _locale = const Locale('ar', ''); // Default to Arabic
    return _locale!;
  }

  void setLocale(String code) {
    _locale = Locale(code, '');
    notifyListeners();
  }
}
