import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StaffDashboardTab extends StatefulWidget {
  const StaffDashboardTab({super.key});

  @override
  State<StaffDashboardTab> createState() => _StaffDashboardTabState();
}

class _StaffDashboardTabState extends State<StaffDashboardTab> {
  bool _onDuty = true;
  int _timerSeconds = 32 * 60 + 46;

  @override
  Widget build(BuildContext context) {
    final minutes = _timerSeconds ~/ 60;
    final seconds = _timerSeconds % 60;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.background,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Blitz Barbershop  STAFF',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cabang Pontianak - Jl. Merdeka',
                        style:
                            TextStyle(color: AppColors.muted, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                _dutyBadge(),
                const SizedBox(width: 6),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                ),
                Container(
                  width: 32,
                  height: 32,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.surface2,
                  ),
                  child: const Icon(Icons.person,
                      color: AppColors.gold, size: 18),
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
                  // Barber info
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundColor: AppColors.surface2,
                          child: Icon(Icons.person,
                              color: AppColors.gold, size: 30),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Dimas Pratama',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 6),
                                  const Icon(Icons.verified,
                                      color: AppColors.gold, size: 14),
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
                              const Text(
                                '• KURSI #02',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            _actionButton('Tugas', AppColors.gold, true),
                            const SizedBox(width: 8),
                            _actionButton('Istirahat', AppColors.surface2, false),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: const [
                      Icon(Icons.access_time, color: AppColors.muted, size: 13),
                      SizedBox(width: 4),
                      Text(
                        'Shift Siang: 10:00 - 20:00 WIB  •  5j 30min tersisa',
                        style: TextStyle(color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  // Active chair
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppColors.gold.withAlpha(80), width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '• Kursi Aktif #02',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: AppColors.red.withAlpha(30),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'SEDANG DIKERJAKAN',
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Ticket
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: AppColors.gold,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ANTREAN',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'A-12',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Bpk. Hendra Wijaya',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        SizedBox(width: 6),
                                        Icon(Icons.verified,
                                            color: AppColors.gold, size: 14),
                                      ],
                                    ),
                                    const Text(
                                      'Pangkas Rambut Fade +\nHanduk Hangat',
                                      style: TextStyle(
                                          color: AppColors.muted, fontSize: 12),
                                    ),
                                    const SizedBox(height: 4),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      decoration: BoxDecoration(
                                        color: AppColors.gold.withAlpha(30),
                                        borderRadius:
                                            BorderRadius.circular(6),
                                      ),
                                      child: const Text(
                                        '⭐ Member Eksekutif Gold',
                                        style: TextStyle(
                                          color: AppColors.gold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Timer
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                          child: Row(
                            children: [
                              const Icon(Icons.timer_outlined,
                                  color: AppColors.muted, size: 14),
                              const SizedBox(width: 6),
                              const Text(
                                'Durasi Pengerjaan',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                                style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.gold,
                                  letterSpacing: 2,
                                ),
                              ),
                              const Text(
                                '/45:00mnt',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              value: _timerSeconds / (45 * 60),
                              backgroundColor: AppColors.surface2,
                              color: AppColors.gold,
                              minHeight: 8,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                          child: Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.swap_horiz, size: 16),
                                  label: const Text('Perbarui Status'),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    side: const BorderSide(
                                        color: AppColors.surface2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.check_circle_outline,
                                      size: 16),
                                  label: const Text('Selesai'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Performance
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kinerja Hari Ini',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Text(
                        'Kamis, 24 Okt',
                        style: TextStyle(
                            color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _perfCard('Pelanggan', '6 /10', Icons.people_outline,
                          '60% Target'),
                      const SizedBox(width: 8),
                      _perfCard('Est. Komisi', 'Rp 385rb',
                          Icons.account_balance_wallet_outlined, '+15% kmm'),
                      const SizedBox(width: 8),
                      _perfCard('Rating', '4.9/5.0', Icons.star_outline,
                          '8 ulasan'),
                    ],
                  ),

                  const SizedBox(height: 20),
                  // Next queue
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Antrean Berikutnya',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Row(
                        children: [
                          const Text(
                            '1 Menunggu  ',
                            style: TextStyle(
                                color: AppColors.muted, fontSize: 12),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: AppColors.green.withAlpha(30),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              '• Di Lounge',
                              style: TextStyle(
                                  color: AppColors.green, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color: AppColors.gold.withAlpha(60)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.surface2,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'A-14',
                                  style: TextStyle(
                                    color: AppColors.gold,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sdr. Randy Kurniawan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    'Cukur Jenggot & Kumis Rapi • Walk-in',
                                    style: TextStyle(
                                        color: AppColors.muted, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.alarm,
                                color: AppColors.muted, size: 14),
                            const SizedBox(width: 4),
                            const Text(
                              'Est. Panggil 14:15 WIB',
                              style: TextStyle(
                                  color: AppColors.muted, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.alarm,
                              color: AppColors.gold, size: 16),
                          label: const Text(
                            'Panggil ke Kursi #02',
                            style: TextStyle(color: AppColors.gold),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 42),
                            side: const BorderSide(color: AppColors.gold),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    'Reservasi Mendatang',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '3 Sesi tersisa',
                    style: TextStyle(color: AppColors.muted, fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  _reservasiItem('15:30', '45 mnt',
                      'dr. Adrian Pramono', 'Paket Komplit Sultan (Cukur + Keramas + P'),
                  const SizedBox(height: 8),
                  _reservasiItem('17:00', '30 mnt',
                      'Farhan Akbar', 'Pangkas Pompadour / Belah Samping Klas'),
                  const SizedBox(height: 8),
                  _reservasiItem('18:30', '50 mnt',
                      'Bimo Wicaksono', 'Paket Cukur Bapak & Anak'),

                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.receipt_long,
                              size: 16, color: AppColors.muted),
                          label: const Text(
                            'Lapor Kasir\nSinkron Invoice cut',
                            style: TextStyle(
                                color: AppColors.muted, fontSize: 11),
                            textAlign: TextAlign.center,
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: AppColors.surface2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.people_outline,
                              size: 16, color: AppColors.muted),
                          label: const Text(
                            'Bantuan Tim\nHanduk / alat habis',
                            style: TextStyle(
                                color: AppColors.muted, fontSize: 11),
                            textAlign: TextAlign.center,
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: AppColors.surface2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
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

  Widget _dutyBadge() {
    return GestureDetector(
      onTap: () => setState(() => _onDuty = !_onDuty),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: _onDuty
              ? AppColors.green.withAlpha(30)
              : AppColors.red.withAlpha(30),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: _onDuty ? AppColors.green : AppColors.red,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.circle,
                color: _onDuty ? AppColors.green : AppColors.red, size: 7),
            const SizedBox(width: 5),
            Text(
              _onDuty ? 'On Duty' : 'Off Duty',
              style: TextStyle(
                color: _onDuty ? AppColors.green : AppColors.red,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButton(String label, Color color, bool filled) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: filled ? color : color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: filled ? Colors.black : AppColors.muted,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _perfCard(String title, String value, IconData icon, String sub) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.muted, size: 14),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: AppColors.muted, fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Text(
              sub,
              style: const TextStyle(
                  color: AppColors.green, fontSize: 9),
            ),
          ],
        ),
      ),
    );
  }

  Widget _reservasiItem(
      String time, String dur, String name, String layanan) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                dur,
                style:
                    const TextStyle(color: AppColors.muted, fontSize: 11),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Container(width: 1, height: 36, color: AppColors.surface2),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  layanan,
                  style: const TextStyle(
                      color: AppColors.muted, fontSize: 11),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.muted),
        ],
      ),
    );
  }
}
