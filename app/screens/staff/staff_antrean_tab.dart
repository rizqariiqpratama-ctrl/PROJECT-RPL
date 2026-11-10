import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../customer/customer_detail_reservasi_screen.dart';

class StaffAntreanTab extends StatefulWidget {
  const StaffAntreanTab({super.key});

  @override
  State<StaffAntreanTab> createState() => _StaffAntreanTabState();
}

class _StaffAntreanTabState extends State<StaffAntreanTab> {
  int _tab = 1; // 0=Semua, 1=Sedang Dilayani, 2=Menunggu

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
                        'Cabang Pontianak - Jl. Merdeka',
                        style:
                            TextStyle(color: AppColors.muted, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.green.withAlpha(30),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.green),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.circle, color: AppColors.green, size: 7),
                      SizedBox(width: 5),
                      Text(
                        'On Duty',
                        style: TextStyle(
                          color: AppColors.green,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                ),
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
                  // Barber info row
                  Container(
                    padding: const EdgeInsets.all(14),
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
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dimas Pratama',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Kursi #02 • Station Classic',
                                style: TextStyle(
                                    color: AppColors.muted, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.surface2,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Master',
                            style: TextStyle(
                                color: AppColors.gold, fontSize: 11),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'EFISIENSI HARI INI',
                              style: TextStyle(
                                  color: AppColors.muted, fontSize: 9),
                            ),
                            Text(
                              '94%',
                              style: TextStyle(
                                color: AppColors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Filter tabs
                  Row(
                    children: [
                      _filterTab('Semua (5)', 0),
                      const SizedBox(width: 8),
                      _filterTab('Sedang Dilayani (1)', 1),
                      const SizedBox(width: 8),
                      _filterTab('Menunggu (3)', 2),
                    ],
                  ),

                  const SizedBox(height: 16),

                  if (_tab == 1) ...[
                    Row(
                      children: [
                        const Icon(Icons.circle,
                            color: AppColors.green, size: 8),
                        const SizedBox(width: 6),
                        const Text(
                          'Sedang Dilayani di Kursi #02',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.red.withAlpha(30),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.circle,
                                  color: AppColors.red, size: 7),
                              SizedBox(width: 4),
                              Text(
                                'LIVE',
                                style: TextStyle(
                                  color: AppColors.red,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.gold,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Column(
                                    children: [
                                      Text(
                                        'TIKET',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'A-12',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
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
                                            'Bpk. Hendra Wij',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(width: 4),
                                          Icon(Icons.verified,
                                              color: AppColors.gold,
                                              size: 14),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.access_time,
                                              size: 12,
                                              color: AppColors.muted),
                                          SizedBox(width: 4),
                                          Text(
                                            'Mulai pkl 14:15 WIB',
                                            style: TextStyle(
                                                color: AppColors.muted,
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        '(Berjalan 24 mnt)',
                                        style: TextStyle(
                                            color: AppColors.muted,
                                            fontSize: 11),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      'TOTAL BIAYA',
                                      style: TextStyle(
                                          color: AppColors.muted,
                                          fontSize: 9),
                                    ),
                                    Text(
                                      'Rp\n155.000',
                                      style: TextStyle(
                                        color: AppColors.gold,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Text(
                              'Pangkas Rambut Fade & Cukur\nHanduk Hangat',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 4),
                            child: Row(
                              children: const [
                                Icon(Icons.access_time,
                                    size: 12, color: AppColors.muted),
                                SizedBox(width: 4),
                                Text(
                                  '45 Menit',
                                  style: TextStyle(
                                      color: AppColors.muted, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(14, 8, 14, 0),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'TAHAPAN PENGERJAAN',
                                  style: TextStyle(
                                      color: AppColors.muted,
                                      fontSize: 10,
                                      letterSpacing: 0.5),
                                ),
                                Text(
                                  'Sedang Dipotong (Aktif)',
                                  style: TextStyle(
                                      color: AppColors.gold, fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(14, 8, 14, 14),
                            child: Row(
                              children: [
                                _stage('Menunggu', false),
                                _stageLine(),
                                _stage('Cuci', false),
                                _stageLine(),
                                _stage('Potong', true),
                                _stageLine(),
                                _stage('Styling', false),
                                _stageLine(),
                                _stage('Selesai', false),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(14, 0, 14, 10),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.check_circle_outline,
                                  size: 18),
                              label: const Text(
                                  'Perbarui Status ke Selesai'),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(14, 0, 14, 14),
                            child: Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.point_of_sale_outlined,
                                        size: 14),
                                    label: const Text(
                                      'Panggil Kasir',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      side: const BorderSide(
                                          color: AppColors.surface2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.add_circle_outline,
                                        size: 14),
                                    label: const Text(
                                      'Tambah Layanan',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      side: const BorderSide(
                                          color: AppColors.surface2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(14, 0, 14, 14),
                            child: Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.free_breakfast_outlined,
                                        size: 14, color: AppColors.muted),
                                    label: const Text(
                                      'Jeda Antrean\nIstirahat 15 Menit',
                                      style: TextStyle(
                                          color: AppColors.muted,
                                          fontSize: 11),
                                      textAlign: TextAlign.left,
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: AppColors.surface2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.swap_horiz,
                                        size: 14, color: AppColors.muted),
                                    label: const Text(
                                      'Oper Antrean\nKe Barber Lain',
                                      style: TextStyle(
                                          color: AppColors.muted,
                                          fontSize: 11),
                                      textAlign: TextAlign.left,
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: AppColors.surface2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],

                  // Waiting queue
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Antrean Menunggu Giliran',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.surface2,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              '3 Orang',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.surface2,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Est. 50 Menit',
                              style: TextStyle(
                                  color: AppColors.muted, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  _waitingCard(
                    no: 'A-14',
                    name: 'Randy Kurniawan',
                    badge: 'Sudah di Lounge',
                    badgeColor: AppColors.green,
                    layanan: 'Paket Komplit (Pangkas +)',
                    durasi: '40 Menit',
                    harga: 'Rp 190.000',
                    btnLabel: 'Panggil Sekarang',
                    isGold: true,
                  ),
                  const SizedBox(height: 10),
                  _waitingCard(
                    no: 'B-03',
                    name: 'Kevin Sanjaya',
                    badge: 'Terkonfirmasi',
                    badgeColor: AppColors.blue,
                    layanan: 'Keramas Detox & Rapikan Je',
                    durasi: '15:00',
                    harga: '(Tepat Waktu)',
                    btnLabel: 'Kirim Pengingat',
                    isOnline: true,
                  ),
                  const SizedBox(height: 10),
                  _waitingCard(
                    no: 'A-15',
                    name: 'Arya Pratama',
                    badge: 'Menunggu',
                    badgeColor: AppColors.muted,
                    layanan: 'Pangkas Rapi Klasik / Mandarin',
                    durasi: 'Mendaftar 10 mnt lalu',
                    harga: '',
                    btnLabel: 'Catatan Khusus',
                    isWalkin: true,
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

  Widget _filterTab(String label, int index) {
    final active = _tab == index;
    return GestureDetector(
      onTap: () => setState(() => _tab = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color: active ? AppColors.gold.withAlpha(30) : AppColors.surface2,
          borderRadius: BorderRadius.circular(20),
          border: active ? Border.all(color: AppColors.gold) : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: active ? AppColors.gold : AppColors.muted,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _stage(String label, bool active) {
    return Column(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? AppColors.gold : AppColors.surface2,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: active ? AppColors.gold : AppColors.muted,
            fontSize: 9,
          ),
        ),
      ],
    );
  }

  Widget _stageLine() {
    return Expanded(
      child: Container(height: 2, color: AppColors.surface2, margin: const EdgeInsets.only(bottom: 14)),
    );
  }

  Widget _waitingCard({
    required String no,
    required String name,
    required String badge,
    required Color badgeColor,
    required String layanan,
    required String durasi,
    required String harga,
    required String btnLabel,
    bool isGold = false,
    bool isOnline = false,
    bool isWalkin = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.surface2,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    if (isOnline)
                      const Text(
                        'ONLINE',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 8,
                            fontWeight: FontWeight.bold),
                      ),
                    if (isWalkin)
                      const Text(
                        'WALK-IN',
                        style: TextStyle(
                            color: AppColors.muted,
                            fontSize: 8,
                            fontWeight: FontWeight.bold),
                      ),
                    if (isGold)
                      const Text(
                        'NOMOR',
                        style: TextStyle(
                            color: AppColors.muted, fontSize: 8),
                      ),
                    Text(
                      no,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        if (isGold) ...[
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppColors.gold.withAlpha(30),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'Gold',
                              style: TextStyle(
                                  color: AppColors.gold, fontSize: 9),
                            ),
                          ),
                        ],
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 3),
                          decoration: BoxDecoration(
                            color: badgeColor.withAlpha(30),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            badge,
                            style: TextStyle(
                                color: badgeColor, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      layanan,
                      style: const TextStyle(
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
              const Icon(Icons.access_time,
                  color: AppColors.muted, size: 13),
              const SizedBox(width: 4),
              Text(
                durasi,
                style: const TextStyle(
                    color: AppColors.muted, fontSize: 12),
              ),
              if (harga.isNotEmpty) ...[
                const SizedBox(width: 10),
                const Text('•',
                    style: TextStyle(color: AppColors.muted)),
                const SizedBox(width: 10),
                Text(
                  harga,
                  style: const TextStyle(
                      color: AppColors.muted, fontSize: 12),
                ),
              ],
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (btnLabel == 'Panggil Sekarang') {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) =>
                            const CustomerDetailReservasiScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: btnLabel == 'Panggil Sekarang'
                        ? AppColors.gold
                        : AppColors.surface2,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    btnLabel,
                    style: TextStyle(
                      color: btnLabel == 'Panggil Sekarang'
                          ? Colors.black
                          : Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
