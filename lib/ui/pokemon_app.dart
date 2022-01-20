import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:pokemon_deck_builder/data/blocs/providers/bloc_providers.dart';
import 'package:pokemon_deck_builder/data/blocs/theme_bloc/theme_bloc.dart';
import 'package:pokemon_deck_builder/data/utils/theme_changer.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';
import 'package:pokemon_deck_builder/ui/theme/app_themes.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import '../generated/l10n.dart';

class PokemonApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MultiBlocProvider(
            providers: providersList,
            child: MaterialApp(
              builder: (context, widget) => ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(context, widget!),
                maxWidth: 800,
                minWidth: 400,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(400, name: MOBILE),
                  const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ],
                background: Container(color: const Color(0xFFF5F5F5)),
              ),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                FormBuilderLocalizations.delegate,
              ],
              theme: ThemeChanger.changeTheme(context),
              darkTheme: appThemeDark,
              debugShowCheckedModeBanner: false,
              initialRoute: MainNavigationRouteNames.mainScreen,
              routes: mainNavigation.routes,
              onGenerateRoute: mainNavigation.onGenerateRoute,
            ),
          );
        },
      ),
    );
  }
}
