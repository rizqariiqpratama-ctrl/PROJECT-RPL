import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StaffJadwalTab extends StatefulWidget {
  const StaffJadwalTab({super.key});

  @override
  State<StaffJadwalTab> createState() => _StaffJadwalTabState();
}

class _StaffJadwalTabState extends State<StaffJadwalTab> {
  int _selectedDay = 1;

  final List<Map<String, dynamic>> _days = [
    {'day': 'KAM', 'date': '24'},
    {'day': 'JUM', 'date': '25'},
    {'day': 'SAB', 'date': '26'},
    {'day': 'MIN', 'date': '27'},
    {'day': 'SEN', 'date': '28'},
  ];

  final List<Map<String, dynamic>> _schedule = [
    {
      'time': '10:00 - 10:45',
      'duration': '40 Menit',
      'name': 'Bpk. Denny S.',
      'layanan': 'Pangkas Rapi Klasik & Handuk\nHangat',
      'status': 'Selesai',
      'payment': 'Lunas\n(GRIS)',
      'payColor': AppColors.green,
    },
    {
      'time': '11:30 - 12:30',
      'duration': '60 Menit',
      'name': 'Bpk. Farhan',
      'layanan': 'Keramas Detox & Rapikan\nJenggot',
      'status': 'Selesai',
      'payment': 'Lunas\n(Membership)',
      'payColor': AppColors.green,
    },
    {
      'time': null,
      'isBreak': true,
      'name': 'Istirahat Makan Siang & Sholat',
      'duration': '12:30 - 13:00 WIB • 60 Menit',
      'payment': 'Jeda Resmi',
      'payColor': AppColors.muted,
    },
    {
      'time': '14:00',
      'duration': 'Terjaan 25 menit',
      'name': 'Bpk. Hendra\nWijaya',
      'layanan': 'Pangkas Fade Presisi &\nPerawatan Kulit Kepala',
      'status': 'Sedang\nDilayani',
      'payment': '✓ Selesai',
      'payColor': AppColors.gold,
      'isActive': true,
    },
    {
      'time': '15:00 - 15:45',
      'duration': '45 Menit  🔔 Terjadwal (35 mnt lagi)',
      'name': 'Kevin Sanjaya',
      'layanan': 'Pangkas Rambut Fade & Cukur Kumis',
      'status': 'Online App',
      'payment': '',
      'payColor': AppColors.blue,
    },
    {
      'time': '16:30 - 17:30',
      'duration': '',
      'name': 'Bagas Pamungkas',
      'layanan': 'Paket Komplit Sultan &\nCitambih',
      'status': 'Terjadwal',
      'payment': '',
      'payColor': AppColors.muted,
      'isVIP': true,
    },
    {
      'time': '18:00 - 18:45',
      'duration': 'Tersedia',
      'name': '+ Input',
      'layanan': 'Slot Terbuka untuk Tamu Walk-in',
      'status': '',
      'payment': '',
      'payColor': AppColors.muted,
      'isEmpty': true,
    },
  ];

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
                        'Jadwal Kerja',
                        style:
                            TextStyle(color: AppColors.muted, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Target Harian',
                  style: TextStyle(color: AppColors.muted, fontSize: 10),
                ),
                const SizedBox(width: 6),
                const Text(
                  '8/10 Sesi',
                  style: TextStyle(
                    color: AppColors.gold,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none)),
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.surface2,
                  child: Icon(Icons.person, color: AppColors.gold, size: 16),
                ),
                const SizedBox(width: 8),
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
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: AppColors.surface2,
                          child: Icon(Icons.person,
                              color: AppColors.gold, size: 26),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Dimas Pratama',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(Icons.verified,
                                      color: AppColors.gold, size: 14),
                                ],
                              ),
                              Text(
                                'Senior Specialist',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 11),
                              ),
                              Text(
                                'Kursi #03',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Oktober 2024',
                          style: TextStyle(
                              color: AppColors.muted, fontSize: 11),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Week days
                  Row(
                    children: List.generate(_days.length, (i) {
                      final d = _days[i];
                      final sel = i == _selectedDay;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () =>
                              setState(() => _selectedDay = i),
                          child: Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10),
                            decoration: BoxDecoration(
                              color: sel
                                  ? AppColors.gold
                                  : AppColors.surface,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  d['day'] as String,
                                  style: TextStyle(
                                    color: sel
                                        ? Colors.black
                                        : AppColors.muted,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  d['date'] as String,
                                  style: TextStyle(
                                    color: sel
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_today,
                            color: AppColors.gold, size: 16),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'JADWAL HARI INI',
                                style: TextStyle(
                                    color: AppColors.muted,
                                    fontSize: 10,
                                    letterSpacing: 1),
                              ),
                              Text(
                                'Jumat, 25 Okt 2024',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                'Shift Siang • 10:00 - 20:00 WIB',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: AppColors.green.withAlpha(30),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.circle,
                                  color: AppColors.green, size: 7),
                              SizedBox(width: 5),
                              Text(
                                'Aktif',
                                style: TextStyle(
                                    color: AppColors.green, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '≡ Rangkaian Pelayanan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Text(
                        'Kursi 03',
                        style: TextStyle(
                            color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  ..._schedule.map((item) => _scheduleItem(item)),

                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),

                  _mgmtButton(
                    icon: Icons.swap_horiz,
                    title: 'Ajukan Tukar Shift / Izin Cuti',
                    color: AppColors.gold,
                  ),
                  const SizedBox(height: 8),
                  _mgmtButton(
                    icon: Icons.lock_outline,
                    title: 'Kunci Slot Sementara',
                    subtitle: 'Maintenance Kursi / Sterilisasi Alat',
                    color: AppColors.muted,
                    locked: true,
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

  Widget _scheduleItem(Map<String, dynamic> item) {
    final isActive = item['isActive'] == true;
    final isEmpty = item['isEmpty'] == true;
    final isBreak = item['isBreak'] == true;
    final isVIP = item['isVIP'] == true;

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.gold.withAlpha(15)
            : isEmpty
                ? AppColors.surface2.withAlpha(100)
                : AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: isActive
            ? Border.all(color: AppColors.gold.withAlpha(80))
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item['time'] != null)
                    Text(
                      item['time'] as String,
                      style: TextStyle(
                        color: isActive ? AppColors.gold : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  if (item['duration'] != null &&
                      (item['duration'] as String).isNotEmpty)
                    Text(
                      item['duration'] as String,
                      style: const TextStyle(
                          color: AppColors.muted, fontSize: 10),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            if (isBreak)
              const Icon(Icons.restaurant, color: AppColors.muted, size: 18)
            else
              const Icon(Icons.person_outline,
                  color: AppColors.muted, size: 18),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (isVIP)
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.gold.withAlpha(30),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'VIP',
                            style: TextStyle(
                                color: AppColors.gold, fontSize: 8),
                          ),
                        ),
                      Expanded(
                        child: Text(
                          item['name'] as String,
                          style: TextStyle(
                            color: isEmpty
                                ? AppColors.muted
                                : Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (item['layanan'] != null &&
                      (item['layanan'] as String).isNotEmpty)
                    Text(
                      item['layanan'] as String,
                      style: const TextStyle(
                          color: AppColors.muted, fontSize: 11, height: 1.4),
                    ),
                ],
              ),
            ),
            if (item['payment'] != null &&
                (item['payment'] as String).isNotEmpty)
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: (item['payColor'] as Color).withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  item['payment'] as String,
                  style: TextStyle(
                    color: item['payColor'] as Color,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _mgmtButton({
    required IconData icon,
    required String title,
    String? subtitle,
    required Color color,
    bool locked = false,
  }) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: AppColors.muted, fontSize: 11),
                  ),
              ],
            ),
          ),
          if (locked)
            const Icon(Icons.lock, color: AppColors.muted, size: 16)
          else
            const Icon(Icons.chevron_right,
                color: AppColors.muted, size: 16),
        ],
      ),
    );
  }
}
