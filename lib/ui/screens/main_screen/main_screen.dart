import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/screen_factory/screen_factory.dart';
import 'package:pokemon_deck_builder/ui/widgets/theme_switcher_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;
  final _screenFactory = ScreenFactory();

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screenTitleText(
            context,
            _selectedTab,
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          _screenFactory.makeSearchScreen(),
          _screenFactory.makeExploreScreen(),
          _screenFactory.makeDecksScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.search),
            label: S.of(context).search_screen_title,
          ),
          BottomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.compass),
            label: S.of(context).explore_screen_title,
          ),
          BottomNavigationBarItem(
            icon: const FaIcon(FontAwesomeIcons.buffer),
            label: S.of(context).decks_screen_title,
          ),
        ],
        onTap: onSelectTab,
      ),
      drawer: const _CustomDrawerWidget(),
    );
  }
}

String _screenTitleText(BuildContext context, int index) {
  String title = '';
  switch (index) {
    case 0:
      title = S.of(context).search_screen_title;
      break;
    case 1:
      title = S.of(context).explore_screen_title;
      break;
    case 2:
      title = S.of(context).decks_screen_title;
      break;
  }

  return title;
}

class _CustomDrawerWidget extends StatelessWidget {
  const _CustomDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            ThemeSwitcherWidget(),
          ],
        ),
      ),
    );
  }
}
