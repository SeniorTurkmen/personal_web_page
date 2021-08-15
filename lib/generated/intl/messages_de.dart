// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(firstName) =>
      "Hallo ${firstName}, willkommen bei Localizely_ Dies ist ein Beispielprojekt, in dem Sie die Funktionen erkunden können_";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "intro_new_key": MessageLookupByLibrary.simpleMessage(
            "Während des Imports erstellte neue Keys können automatisch mit einem Tag versehen werden, sodass Manager und Übersetzer wissen, welche Keys keine Übersetzung haben_"),
        "intro_not_reviewed_text": MessageLookupByLibrary.simpleMessage(
            "Dies ist eine Übersetzung mit Benachrichtigung, die besagt, dass die Übersetzung nicht überprüft wird_"),
        "intro_too_long_text": MessageLookupByLibrary.simpleMessage(
            "Dies ist eine Übersetzung mit Benachrichtigung, die angibt, dass der Text die vorgesehene Länge überschreitet_"),
        "intro_welcome": m0,
        "page_home_counter": MessageLookupByLibrary.simpleMessage(
            "Sie haben den Knopf so oft gedrückt"),
        "page_home_title":
            MessageLookupByLibrary.simpleMessage("Beispielprojekt Homepage")
      };
}
