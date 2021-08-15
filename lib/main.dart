import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:personal_web_site/core/extensions/size_config.dart';
import 'package:personal_web_site/core/extensions/widget_extension.dart';

import 'generated/l10n.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mustafa Türkmen',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: {'/data': (_) => const NavigatorPage()},
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: context.deviceType.get);
  }
}

class Small extends StatelessWidget {
  const Small({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/data'),
          child: Text('Small Screen: ${context.width} ')),
    );
  }
}

class Medium extends StatelessWidget {
  const Medium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/data'),
          child: Text('Medium Screen: ${context.width} ')),
    );
  }
}

class Large extends StatelessWidget {
  const Large({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/data'),
          child: Text('Large Screen: ${context.width} ')),
    );
  }
}

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
