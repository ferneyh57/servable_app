import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:serveable_app/ui/config/extensions/context_extension.dart';
import 'package:serveable_app/ui/config/injector/di.dart';
import 'package:serveable_app/ui/config/routes/route.dart';
import 'package:serveable_app/ui/config/routes/routes.dart';
import 'package:serveable_app/ui/widgets/theme_icon.dart';

class MainScaffold extends StatefulWidget {
  final Widget child;
  const MainScaffold({
    super.key,
    required this.child,
  });

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;
  final List<AppRoute> _tabs = [
    MainRoutes.homeRoute,
    MainRoutes.jobsRoute,
    MainRoutes.talentsRoute,
    MainRoutes.profileRoute,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    context.go(_tabs[index].path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_tabs[_selectedIndex].name),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final themeData = ref.watch(themeNotifierProvider);
                    return ThemeIcon(
                      isDarkMode: themeData.brightness == Brightness.dark,
                      onThemeChange: (value) => ref.read(themeNotifierProvider.notifier).onChangeBrightness(value),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_on),
                ),
              ],
            ),
          ),
        ],
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: context.colorScheme.primary,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: context.colorScheme.onSurface,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_outline,
              color: context.colorScheme.onSurface,
            ),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.diversity_1_outlined,
              color: context.colorScheme.onSurface,
            ),
            label: 'Talents',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: context.colorScheme.onSurface,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
