// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `New keys created during import can be auto_tagged so that managers and translators know what keys miss translation_`
  String get intro_new_key {
    return Intl.message(
      'New keys created during import can be auto_tagged so that managers and translators know what keys miss translation_',
      name: 'intro_new_key',
      desc: '',
      args: [],
    );
  }

  /// `This is a translation with notification, which indicates the translation is not reviewed_`
  String get intro_not_reviewed_text {
    return Intl.message(
      'This is a translation with notification, which indicates the translation is not reviewed_',
      name: 'intro_not_reviewed_text',
      desc: '',
      args: [],
    );
  }

  /// `This is a translation with notification, which indicates text exceeds its intended length_`
  String get intro_too_long_text {
    return Intl.message(
      'This is a translation with notification, which indicates text exceeds its intended length_',
      name: 'intro_too_long_text',
      desc: '',
      args: [],
    );
  }

  /// `Hi {firstName}, welcome to Localizely! This is a sample project where you can explore the features_`
  String intro_welcome(Object firstName) {
    return Intl.message(
      'Hi $firstName, welcome to Localizely! This is a sample project where you can explore the features_',
      name: 'intro_welcome',
      desc:
          'This is a description of a key so that the translator better understands the context',
      args: [firstName],
    );
  }

  /// `You have pushed the button this many times`
  String get page_home_counter {
    return Intl.message(
      'You have pushed the button this many times',
      name: 'page_home_counter',
      desc: '',
      args: [],
    );
  }

  /// `Sample project Home Page`
  String get page_home_title {
    return Intl.message(
      'Sample project Home Page',
      name: 'page_home_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
