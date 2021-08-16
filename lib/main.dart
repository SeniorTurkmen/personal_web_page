import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_web_site/core/constants/image_constants.dart';
import 'package:personal_web_site/core/extensions/size_config.dart';
import 'package:personal_web_site/core/extensions/widget_extension.dart';

import 'core/helper/clippers/home_page_clipper.dart';
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
    return Scaffold(
      backgroundColor: Color(0xff26262d),
      body: context.deviceType.get,
    );
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
    return Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(ImageConstants.instance.background,
                fit: BoxFit.fill)),
        Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Card(
                  child: SizedBox(
                    height: context.height * 25,
                    width: context.width * 5,
                  ),
                ),*/
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Card(
                  elevation: 15,
                  color: const Color(0xff31313a),
                  child: SizedBox(
                    height: context.height * 60,
                    width: context.width * 30,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: context.height * 30,
                              width: double.infinity,
                              child: ClipPath(
                                  clipper: HomePageClipper(),
                                  child: Image.asset(
                                    ImageConstants.instance.background,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Spacer(),
                            SizedBox(
                              height: context.height * 4,
                              child: Text(
                                'Mustafa TÜRKMEN',
                                style: GoogleFonts.poppins(
                                    fontSize: context.textScale * 25,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: context.height * 4,
                              child: Text(
                                'Flutter Developer',
                                style: GoogleFonts.poppins(
                                    fontSize: context.textScale * 15,
                                    color: const Color(0xffff9800),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                                height: context.height * 4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.twitter,
                                          color: Color(0xffa2a2a6),
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.instagram,
                                          color: Color(0xffa2a2a6),
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.linkedinIn,
                                          color: Color(0xffa2a2a6),
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.envelope,
                                          color: Color(0xffa2a2a6),
                                        )),
                                  ],
                                )),
                            SizedBox(
                              height: context.height * 7,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Designed By Mustafa TÜRKMEN',
                                        style: GoogleFonts.poppins(
                                            fontSize: context.textScale * 13,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'İletisime Geç',
                                        style: GoogleFonts.poppins(
                                            fontSize: context.textScale * 13,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Center(
                            child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(context.pixelRatio * 150),
                            color: Color(0xff31313a),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  context.pixelRatio * 150),
                              child:
                                  Image.asset(ImageConstants.instance.profile)),
                        ))
                      ],
                    ),
                  )),
            )
          ],
        )),
      ],
    );
  }
}

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Card(
              child: SizedBox(
            height: context.height * .5,
          ))
        ],
      ),
    ));
  }
}
