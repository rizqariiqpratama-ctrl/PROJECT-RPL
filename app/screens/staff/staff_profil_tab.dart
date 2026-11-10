import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../login_screen.dart';

class StaffProfilTab extends StatelessWidget {
  const StaffProfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.background,
            automaticallyImplyLeading: false,
            title: Row(
              children: const [
                Expanded(
                  child: Text(
                    'Akun',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile header card
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
                                'Dimas Pratama',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.verified,
                                      color: AppColors.gold, size: 14),
                                  const SizedBox(width: 4),
                                  const Text(
                                    'On Duty',
                                    style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              const Text(
                                'MASTER BARBER',
                                style: TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),
                        Switch(
                          value: true,
                          onChanged: (_) {},
                          activeColor: AppColors.gold,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),
                  // Stats row
                  Row(
                    children: [
                      _statCard('4.95', '(520)', Icons.star,
                          AppColors.gold),
                      const SizedBox(width: 8),
                      _statCard('4+ Thn', 'Pengalaman', Icons.workspace_premium,
                          AppColors.muted),
                      const SizedBox(width: 8),
                      _statCard('1.428', 'Pelanggan', Icons.people_outline,
                          AppColors.muted),
                    ],
                  ),

                  const SizedBox(height: 16),
                  // Commission card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppColors.gold.withAlpha(60)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dompet Komisi Staff',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.green.withAlpha(30),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'hari ini',
                                style: TextStyle(
                                    color: AppColors.green, fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Periode Aktif: Oktober 2024',
                          style: TextStyle(
                              color: AppColors.muted, fontSize: 11),
                        ),
                        const Divider(height: 20),
                        Row(
                          children: const [
                            Text(
                              'Rp',
                              style: TextStyle(
                                  color: AppColors.muted, fontSize: 13),
                            ),
                            SizedBox(width: 4),
                            Text(
                              '8.450.000',
                              style: TextStyle(
                                color: AppColors.gold,
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        _commRow(
                          icon: Icons.trending_up,
                          color: AppColors.green,
                          label: 'Pangkas',
                          amount: 'Rp\n6.920.000',
                        ),
                        const SizedBox(height: 6),
                        _commRow(
                          icon: Icons.water_drop_outlined,
                          color: AppColors.blue,
                          label: 'SHG Bank Sinkron\nMandiri 70%',
                          amount: 'Rp\n620.000',
                        ),
                        const SizedBox(height: 6),
                        _commRow(
                          icon: Icons.star_outline,
                          color: AppColors.gold,
                          label: 'SCD Digital Annual\nTOT LH',
                          amount: 'Rp\n1.030.000',
                        ),
                        const Divider(height: 20),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.account_balance_wallet,
                              size: 18),
                          label: const Text('Tarik Dana / Payout Kilat'),
                        ),
                        const SizedBox(height: 8),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.picture_as_pdf,
                              size: 16, color: AppColors.muted),
                          label: const Text(
                            'Unduh Slip Gaji Bulan Ini (PDF)',
                            style: TextStyle(
                                color: AppColors.muted, fontSize: 12),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 44),
                            side: const BorderSide(
                                color: AppColors.surface2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Shift & Station
                  _sectionTitle('Shift & Stasiun Kursi'),
                  const SizedBox(height: 10),
                  _infoCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.access_time,
                                color: AppColors.gold, size: 14),
                            const SizedBox(width: 6),
                            const Text(
                              'Shift Pagi – Sore (10:00 – 18:00 WIB)',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              decoration: BoxDecoration(
                                color: AppColors.green.withAlpha(30),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text(
                                'edit',
                                style: TextStyle(
                                    color: AppColors.green, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Kursi Prioritas Tahanan\nStation #02',
                          style: TextStyle(
                              color: AppColors.muted, fontSize: 12),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Periode Kerja Shift Pembelian: Det',
                          style: TextStyle(
                              color: AppColors.muted, fontSize: 11),
                        ),
                        const SizedBox(height: 10),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_today,
                              size: 14, color: AppColors.muted),
                          label: const Text(
                            'Ajukan Tukar Shift / Tambahan Cut',
                            style: TextStyle(
                                color: AppColors.muted, fontSize: 11),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 42),
                            side: const BorderSide(
                                color: AppColors.surface2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  _sectionTitle('Keahlian & Spesialisasi'),
                  const SizedBox(height: 10),
                  _infoCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _skillRow('Fade & Gradasi'),
                        _skillRow('Comb Over & Pom Back'),
                        _skillRow('Classic Tie & Pom Back'),
                        _skillRow('All Times • Fade Design'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  _sectionTitle('Preferensi & Operasional'),
                  const SizedBox(height: 10),
                  _settingTile(
                    icon: Icons.notifications_active_outlined,
                    title: 'Bela Notifikasi',
                    subtitle: 'Suara Notifikasi Antrean & Reservasi',
                    isToggle: true,
                    toggleValue: true,
                  ),
                  _settingTile(
                    icon: Icons.auto_awesome,
                    title: 'Auto-Accept Booking Online',
                    subtitle: 'Bayar Notifikasi Suara Aktif Antrean',
                    isToggle: false,
                  ),
                  _settingTile(
                    icon: Icons.build_outlined,
                    title: 'Alat & Perlengkapan Barber',
                    subtitle: 'Periksa kesiapan alat',
                    trailing: Icons.chevron_right,
                    badge: 'lengkap',
                  ),

                  const SizedBox(height: 16),
                  _sectionTitle('Standar SOP Pelayanan Blitz'),
                  const SizedBox(height: 8),
                  _menuItem(Icons.store, 'Hubungi Store\nManager Cabang',
                      AppColors.gold),

                  const SizedBox(height: 8),
                  _menuItem(Icons.security, 'Keamanan & Ganti PIN\nKasir',
                      AppColors.muted),

                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'Jadwal Kerja & Absensi (Lihat Jadwal)\nInfomasi shift dan presensi kehadiran',
                      style: TextStyle(
                          color: AppColors.muted, fontSize: 12, height: 1.5),
                    ),
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
                      'Keluar dari Akun Staff (Sign Out)',
                      style: TextStyle(color: AppColors.red),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      side: const BorderSide(color: AppColors.red),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
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

  Widget _statCard(
      String value, String sub, IconData icon, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 18),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(
              sub,
              style:
                  const TextStyle(color: AppColors.muted, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  Widget _commRow({
    required IconData icon,
    required Color color,
    required String label,
    required String amount,
  }) {
    return Row(
      children: [
        Icon(icon, color: color, size: 16),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
                color: AppColors.muted, fontSize: 12, height: 1.4),
          ),
        ),
        Text(
          amount,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }

  Widget _infoCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }

  Widget _skillRow(String skill) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          const Icon(Icons.check_circle_outline,
              color: AppColors.gold, size: 14),
          const SizedBox(width: 8),
          Text(skill,
              style: const TextStyle(fontSize: 13, color: Colors.white)),
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
    String? badge,
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
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 13)),
                Text(subtitle,
                    style: const TextStyle(
                        color: AppColors.muted, fontSize: 11)),
              ],
            ),
          ),
          if (badge != null)
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: AppColors.green.withAlpha(30),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                badge,
                style: const TextStyle(
                    color: AppColors.green, fontSize: 10),
              ),
            )
          else if (isToggle)
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

  Widget _menuItem(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 13, height: 1.4),
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.muted),
        ],
      ),
    );
  }
}
