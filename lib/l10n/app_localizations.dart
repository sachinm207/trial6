// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

// class AppLocalizations {
//   static AppLocalizations of(BuildContext context) {
//     return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
//   }

//   static const LocalizationsDelegate<AppLocalizations> delegate =
//       _AppLocalizationsDelegate();

//   // Add the missing getters and methods
//   String get homeTitle => Intl.message('Home', name: 'homeTitle');
//   String get signedOut => Intl.message('Signed out', name: 'signedOut');
//   String welcomeMessage(String email) => Intl.message(
//         'Welcome, $email!',
//         name: 'welcomeMessage',
//         args: [email],
//       );

// }

// class _AppLocalizationsDelegate
//     extends LocalizationsDelegate<AppLocalizations> {
//   const _AppLocalizationsDelegate();

//   @override
//   bool isSupported(Locale locale) {
//     return ['en', 'es'].contains(locale.languageCode);
//   }

//   @override
//   Future<AppLocalizations> load(Locale locale) async {
//     final String name = locale.countryCode == null || locale.countryCode!.isEmpty
//         ? locale.languageCode
//         : locale.toString();
//     final String localeName = Intl.canonicalizedLocale(name);

//     Intl.defaultLocale = localeName;

    

//     return AppLocalizations();
//   }

//   @override
//   bool shouldReload(_AppLocalizationsDelegate old) => false;
// }
