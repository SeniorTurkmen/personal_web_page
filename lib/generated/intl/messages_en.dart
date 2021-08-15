// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(firstName) =>
      "Hi ${firstName}, welcome to Localizely! This is a sample project where you can explore the features_";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "intro_new_key": MessageLookupByLibrary.simpleMessage(
            "New keys created during import can be auto_tagged so that managers and translators know what keys miss translation_"),
        "intro_not_reviewed_text": MessageLookupByLibrary.simpleMessage(
            "This is a translation with notification, which indicates the translation is not reviewed_"),
        "intro_too_long_text": MessageLookupByLibrary.simpleMessage(
            "This is a translation with notification, which indicates text exceeds its intended length_"),
        "intro_welcome": m0,
        "page_home_counter": MessageLookupByLibrary.simpleMessage(
            "You have pushed the button this many times"),
        "page_home_title":
            MessageLookupByLibrary.simpleMessage("Sample project Home Page")
      };
}
