import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../login_screen.dart';

class CustomerProfilTab extends StatelessWidget {
  const CustomerProfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.background,
            automaticallyImplyLeading: false,
            title: const Text(
              'Profil Pelanggan',
              style: TextStyle(color: AppColors.muted, fontSize: 13),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  'BLITZ CUSTOMER',
                  style: TextStyle(
                    color: AppColors.muted,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Shop name header
                  Center(
                    child: Column(
                      children: const [
                        Text(
                          'Blitz Barbershop',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'ang Pontianak, Jl. Merd▾',
                          style: TextStyle(color: AppColors.muted, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: AppColors.gold.withAlpha(30),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.goldDark),
                      ),
                      child: const Text(
                        'GOLD MEMBER',
                        style: TextStyle(
                          color: AppColors.gold,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Profile card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 36,
                              backgroundColor: AppColors.surface2,
                              child: Icon(Icons.person,
                                  size: 40, color: AppColors.gold),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.gold,
                                ),
                                child: const Icon(Icons.camera_alt,
                                    color: Colors.black, size: 13),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'INFORMASI PELANGGAN',
                                style: TextStyle(
                                    color: AppColors.muted,
                                    fontSize: 10,
                                    letterSpacing: 1),
                              ),
                              const Text(
                                'Randy Pratama',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.verified,
                                      color: AppColors.green, size: 14),
                                  SizedBox(width: 4),
                                  Text(
                                    'ID: BLITZ-8829',
                                    style: TextStyle(
                                        color: AppColors.muted, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  _infoTile(Icons.person_outline, 'Nama Lengkap', 'Randy Pratama'),
                  _infoTile(
                      Icons.phone_android, 'Nomor HP / WhatsApp', '+62 812-3456-7890'),
                  _infoTile(Icons.email_outlined, 'Email',
                      'randy.pratama@gmail.com'),

                  const SizedBox(height: 14),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, size: 18),
                    label: const Text('Ubah Informasi Akun'),
                  ),

                  const SizedBox(height: 20),
                  // Tier & points
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: AppColors.surface,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'TIER MEMBER',
                                style: TextStyle(
                                    color: AppColors.muted,
                                    fontSize: 10,
                                    letterSpacing: 1),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: const [
                                  Icon(Icons.workspace_premium,
                                      color: AppColors.gold, size: 18),
                                  SizedBox(width: 6),
                                  Text(
                                    'Gold Club',
                                    style: TextStyle(
                                      color: AppColors.gold,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              const Text(
                                'Diskon 10% Tiap Sesi',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: AppColors.surface,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'SALDO POIN',
                                style: TextStyle(
                                    color: AppColors.muted,
                                    fontSize: 10,
                                    letterSpacing: 1),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: const [
                                  Icon(Icons.card_giftcard,
                                      color: AppColors.gold, size: 18),
                                  SizedBox(width: 6),
                                  Text(
                                    '450 pts',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              const Text(
                                '= Rp 45.000 Tunai',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    'Pengaturan Akun & Keamanan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _settingTile(
                    icon: Icons.lock_clock,
                    title: 'Ubah PIN & Kata Sandi',
                    subtitle: 'Amankan autentikasi akun Anda',
                    trailing: Icons.chevron_right,
                  ),
                  _settingTile(
                    icon: Icons.notifications_active_outlined,
                    title: 'Notifikasi & Pengingat Antrean',
                    subtitle: 'Alarm suara & pesan WhatsApp',
                    isToggle: true,
                    toggleValue: true,
                  ),
                  _settingTile(
                    icon: Icons.headset_mic_outlined,
                    title: 'Bantuan / CS WhatsApp',
                    subtitle: 'Hubungi admin cabang Pontianak',
                    trailing: Icons.open_in_new,
                  ),

                  const SizedBox(height: 20),
                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                            builder: (_) => const LoginScreen()),
                        (_) => false,
                      );
                    },
                    icon: const Icon(Icons.logout, color: AppColors.red),
                    label: const Text(
                      'Keluar dari Akun',
                      style: TextStyle(color: AppColors.red),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      side: const BorderSide(color: AppColors.red),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'Blitz Mobile v2.4.1 • Gentleman\'s Grooming Society',
                      style: TextStyle(color: AppColors.surface3, fontSize: 10),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoTile(IconData icon, String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.surface2)),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.muted, size: 18),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: const TextStyle(
                        color: AppColors.muted, fontSize: 11)),
                Text(value,
                    style: const TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingTile({
    required IconData icon,
    required String title,
    required String subtitle,
    IconData? trailing,
    bool isToggle = false,
    bool toggleValue = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.gold.withAlpha(25),
            ),
            child: Icon(icon, color: AppColors.gold, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                Text(subtitle,
                    style: const TextStyle(color: AppColors.muted, fontSize: 11)),
              ],
            ),
          ),
          if (isToggle)
            Switch(
              value: toggleValue,
              onChanged: (_) {},
              activeColor: AppColors.gold,
            )
          else if (trailing != null)
            Icon(trailing, color: AppColors.muted, size: 18),
        ],
      ),
    );
  }
}
