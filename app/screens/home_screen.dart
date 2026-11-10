
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'dashboard_tab.dart';
import 'list_tab.dart';
import 'notification_tab.dart';
import 'profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final pages = const [
    DashboardTab(),
    ListTab(),
    NotificationTab(),
    ProfileTab(),
  ];

  final titles = [
    'Dashboard',
    'Reservasi',
    'Notifikasi',
    'Profil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[selectedIndex],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => setState(() => selectedIndex = 2),
            icon: const Icon(
              Icons.notifications_none,
              color: AppColors.gold,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() => selectedIndex = index);
        },
        backgroundColor: AppColors.surface,
        indicatorColor: AppColors.gold.withOpacity(0.2),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard, color: AppColors.gold),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.content_cut),
            selectedIcon: Icon(Icons.content_cut, color: AppColors.gold),
            label: 'Reservasi',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_none),
            selectedIcon: Icon(Icons.notifications, color: AppColors.gold),
            label: 'Notifikasi',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person, color: AppColors.gold),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
