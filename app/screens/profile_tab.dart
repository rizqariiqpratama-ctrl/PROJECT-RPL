
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'login_screen.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            children: [
              CircleAvatar(
                radius: 43,
                backgroundColor: AppColors.surface2,
                child: Icon(
                  Icons.person,
                  size: 48,
                  color: AppColors.gold,
                ),
              ),
              SizedBox(height: 13),
              Text(
                'Dimas Pratama',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Master Barber • Blitz Barbershop',
                style: TextStyle(
                  color: AppColors.muted,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 13),
              Text(
                'ID BARBER: BLITZ-STF-084',
                style: TextStyle(
                  color: AppColors.gold,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),
        const Text(
          'Akun & Pengaturan',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        _menu(Icons.person_outline, 'Informasi Profil'),
        _menu(Icons.content_cut, 'Portofolio Gaya Rambut'),
        _menu(Icons.calendar_month, 'Jadwal Kerja'),
        _menu(Icons.notifications_none, 'Pengaturan Notifikasi'),
        _menu(Icons.help_outline, 'Bantuan & Kontak'),

        const SizedBox(height: 20),

        OutlinedButton.icon(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const LoginScreen(),
              ),
              (route) => false,
            );
          },
          icon: const Icon(Icons.logout),
          label: const Text('Keluar / Logout'),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.red,
            side: const BorderSide(color: AppColors.red),
            minimumSize: const Size(double.infinity, 50),
          ),
        ),

        const SizedBox(height: 25),
        const Center(
          child: Text(
            'BLITZ BARBERSHOP',
            style: TextStyle(
              color: AppColors.muted,
              fontSize: 11,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }

  Widget _menu(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.gold),
        title: Text(title),
        trailing: const Icon(
          Icons.chevron_right,
          color: AppColors.muted,
        ),
        onTap: () {},
      ),
    );
  }
}
