// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

// part 'localization.g.dart';

// @SheetLocalization("1_7luw1Kre1A059mWjQIEnlT6fpi-GS6EdZR8kDX-NgI", "0",
//     0) // <- See 1. to get DOCID and SHEETID
// // the `1` is the generated version. You must increment it each time you want to regenerate
// // a new version of the labels.
// class AppLocalizationsDelegate
//     extends LocalizationsDelegate<AppLocalizationsData> {
//   const AppLocalizationsDelegate();

//   @override
//   bool isSupported(Locale locale) => localizedLabels.containsKey(locale);

//   @override
//   Future<AppLocalizationsData> load(Locale locale) =>
//       SynchronousFuture<AppLocalizationsData>(localizedLabels[locale]!);
//   @override
//   bool shouldReload(AppLocalizationsDelegate old) => false;
// }

// // extension PluralExtension on int {
// //   Plural plural() {
// //     if (this == 0) return Plural.zero;
// //     if (this == 1) return Plural.one;
// //     return Plural.multiple;
// //   }
// // }

// extension AppLocalizationsExtensions on BuildContext {
//   AppLocalizationsData get localizations {
//     return Localizations.of<AppLocalizationsData>(this, AppLocalizationsData)!;
//   }
// }
