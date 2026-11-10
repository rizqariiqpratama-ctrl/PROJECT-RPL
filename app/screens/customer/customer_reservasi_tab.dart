import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'customer_riwayat_screen.dart';

class CustomerReservasiTab extends StatefulWidget {
  const CustomerReservasiTab({super.key});

  @override
  State<CustomerReservasiTab> createState() => _CustomerReservasiTabState();
}

class _CustomerReservasiTabState extends State<CustomerReservasiTab> {
  int _selectedDay = 1; // index of day
  String? _selectedTime;

  final List<Map<String, dynamic>> _days = [
    {'day': 'Rab', 'date': '24', 'label': 'Hari Ini', 'slots': 0},
    {'day': 'Kam', 'date': '25', 'label': 'Besok', 'slots': 0},
    {'day': 'Jum', 'date': '26', 'label': '6 Slot', 'slots': 6},
    {'day': 'Sab', 'date': '27', 'label': 'Tersedia', 'slots': 8},
    {'day': 'Min', 'date': '28', 'label': '8 Slot', 'slots': 8},
  ];

  final List<Map<String, dynamic>> _morning = [
    {'time': '10:00', 'full': false},
    {'time': '10:45', 'full': false},
    {'time': '11:30', 'full': true},
  ];
  final List<Map<String, dynamic>> _afternoon = [
    {'time': '13:00', 'full': false},
    {'time': '13:45', 'full': false},
    {'time': '14:30', 'full': false},
    {'time': '15:15', 'full': false},
  ];
  final List<Map<String, dynamic>> _evening = [
    {'time': '16:30', 'full': false},
    {'time': '17:15', 'full': false},
    {'time': '19:00', 'full': false},
    {'time': '19:45', 'full': false},
    {'time': '20:30', 'full': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.background,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Reservasi Online',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Blitz Barbershop • Cabang Pontian...',
                  style: TextStyle(fontSize: 11, color: AppColors.muted),
                ),
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (_) => const CustomerRiwayatScreen(),
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 17,
                    backgroundColor: AppColors.surface2,
                    child: Icon(Icons.person, color: AppColors.gold, size: 18),
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Steps
                  Row(
                    children: [
                      _step('1', 'Pilih Tanggal', true),
                      Expanded(child: Container(height: 1, color: AppColors.surface2)),
                      _step('2', 'Pilih Jam Sesi', true),
                      Expanded(child: Container(height: 1, color: AppColors.surface2)),
                      _step('3', 'Konfirmasi', false),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Selected service
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: AppColors.gold.withAlpha(30),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.content_cut, color: AppColors.gold),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LAYANAN & KAPSTER',
                                style: TextStyle(
                                  color: AppColors.muted,
                                  fontSize: 10,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                'Signature Cut & Fade',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Kapster: Dimas Pratama  ',
                                    style: TextStyle(
                                      color: AppColors.muted,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Icon(Icons.circle, color: AppColors.green, size: 8),
                                  Text(
                                    ' Tersedia',
                                    style: TextStyle(color: AppColors.green, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppColors.surface2,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Ubah',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.gold,
                            ),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Pilih Hari & Tanggal',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Oktober 2024',
                        style: TextStyle(color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: List.generate(_days.length, (i) {
                      final d = _days[i];
                      final selected = i == _selectedDay;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _selectedDay = i),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: selected ? AppColors.gold : AppColors.surface,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  d['day'] as String,
                                  style: TextStyle(
                                    color: selected ? Colors.black : AppColors.muted,
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  d['date'] as String,
                                  style: TextStyle(
                                    color: selected ? Colors.black : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  d['label'] as String,
                                  style: TextStyle(
                                    color: selected ? Colors.black : AppColors.muted,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.gold,
                        ),
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Pilih Jam Sesi',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Spacer(),
                      const Icon(Icons.access_time, color: AppColors.muted, size: 14),
                      const SizedBox(width: 4),
                      const Text(
                        'WIB (GMT+7)',
                        style: TextStyle(color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  _timeSectionLabel('☀ Sesi Pagi (09:00 - 12:00)', '2 Slot Tersedia'),
                  const SizedBox(height: 8),
                  _timeGrid(_morning),
                  const SizedBox(height: 14),
                  _timeSectionLabel('☀ Sesi Siang (13:00 - 16:00)', 'Dipilih: 13:00'),
                  const SizedBox(height: 8),
                  _timeGrid(_afternoon),
                  const SizedBox(height: 14),
                  _timeSectionLabel('🌙 Sesi Sore & Malam (16:30 - 21:00)', '5 Slot Tersedia'),
                  const SizedBox(height: 8),
                  _timeGrid(_evening),

                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.surface2,
                        ),
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: AppColors.muted,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Ringkasan Reservasi',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Spacer(),
                      const Text(
                        'Kursi #02',
                        style: TextStyle(color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_month, color: AppColors.gold, size: 16),
                            const SizedBox(width: 8),
                            const Text(
                              'Jadwal Waktu Pilihan',
                              style: TextStyle(color: AppColors.muted, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Kamis, 25 Oktober 2024 • 13:00 - 13:45 WIB',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        const Divider(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Signature Cut & Fade (45 mnt)',
                              style: TextStyle(fontSize: 13),
                            ),
                            const Text(
                              'Rp 95.000',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Styling Artisan & Handuk Hangat',
                              style: TextStyle(color: AppColors.muted, fontSize: 12),
                            ),
                            const Text(
                              'Gratis (Termasuk)',
                              style: TextStyle(color: AppColors.green, fontSize: 12),
                            ),
                          ],
                        ),
                        const Divider(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total Biaya Reservasi',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const Text(
                              'Rp 95.000',
                              style: TextStyle(
                                color: AppColors.gold,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Bayar di tempat / transfer saat selesai',
                          style: TextStyle(color: AppColors.muted, fontSize: 11),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Konfirmasi Reservasi Online →'),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      '✓ Gratis pembatalan & ubah jadwal hingga 2 jam sebelum sesi',
                      style: TextStyle(color: AppColors.muted, fontSize: 11),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ada kendala atau perlu ganti waktu?  ',
                        style: TextStyle(color: AppColors.muted, fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          '✕ Batalkan Reservasi',
                          style: TextStyle(color: AppColors.red, fontSize: 12),
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

  Widget _step(String number, String label, bool active) {
    return Column(
      children: [
        Container(
          width: 26,
          height: 26,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? AppColors.gold : AppColors.surface2,
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                color: active ? Colors.black : AppColors.muted,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: active ? AppColors.gold : AppColors.muted,
            fontSize: 10,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _timeSectionLabel(String label, String sub) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.muted,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(sub, style: const TextStyle(color: AppColors.muted, fontSize: 11)),
      ],
    );
  }

  Widget _timeGrid(List<Map<String, dynamic>> times) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: times.map((t) {
        final full = t['full'] as bool;
        final selected = t['time'] == _selectedTime;
        return GestureDetector(
          onTap: full
              ? null
              : () => setState(() => _selectedTime = t['time'] as String),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              color: selected
                  ? AppColors.gold
                  : full
                      ? AppColors.surface2.withAlpha(100)
                      : AppColors.surface2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  t['time'] as String,
                  style: TextStyle(
                    color: selected
                        ? Colors.black
                        : full
                            ? AppColors.muted
                            : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                if (full)
                  const Text(
                    'PENUH',
                    style: TextStyle(color: AppColors.red, fontSize: 9),
                  ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
