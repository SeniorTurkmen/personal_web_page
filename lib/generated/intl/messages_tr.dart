// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(firstName) =>
      "Merhaba ${firstName}, Localizely hoş geldiniz! Bu özellikleri keşfedebileceğiniz örnek bir projedir_";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "intro_new_key": MessageLookupByLibrary.simpleMessage(
            "İçe aktarma sırasında oluşturulan yeni anahtarlar otomatik olarak etiketlenebilir, böylece yöneticiler ve çevirmenler hangi tuşların çeviriyi kaçırdığını bilir_"),
        "intro_not_reviewed_text": MessageLookupByLibrary.simpleMessage(
            "Bu, çevirinin gözden geçirilmediğini gösteren bildirim içeren bir çeviridir_"),
        "intro_too_long_text": MessageLookupByLibrary.simpleMessage(
            "Bu, metnin amaçlanan uzunluğunu aştığını gösteren bildirim içeren bir çeviridir_"),
        "intro_welcome": m0,
        "page_home_counter":
            MessageLookupByLibrary.simpleMessage("Düğmeye defalarca bastın_"),
        "page_home_title":
            MessageLookupByLibrary.simpleMessage("Örnek proje Ana Sayfası")
      };
}
