import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../customer/customer_detail_reservasi_screen.dart';

class StaffRiwayatTab extends StatefulWidget {
  const StaffRiwayatTab({super.key});

  @override
  State<StaffRiwayatTab> createState() => _StaffRiwayatTabState();
}

class _StaffRiwayatTabState extends State<StaffRiwayatTab> {
  String _activeTab = 'Riwayat Reservasi';
  String _filterStatus = 'Semua';

  final List<Map<String, dynamic>> _reservations = [
    {
      'kode': '#BLZ-20241028-02',
      'kursi': 'Kursi #02',
      'status': 'Terjadwal',
      'tanggal': 'Hari Ini • 28 Okt 2024, 15:30 WIB',
      'barber': 'Dimas Pratama',
      'tipe': 'KAPSTER / MASTER BARBER',
      'layanan': 'Gentleman Executive Cut + Hair Wash & Styling',
      'actions': ['Lihat Tiket Antrean', 'Ubah Jadwal', 'Batalkan Reservasi'],
    },
    {
      'kode': '#BLZ-20241015-89',
      'kursi': 'Kursi #01',
      'status': 'Selesai',
      'tanggal': '15 Okt 2024 • 14:00 WIB',
      'barber': 'Dimas Pratama',
      'tipe': 'KAPSTER / MASTER BARBER',
      'layanan': 'French Crop Fade + Shaving Beard Grooming',
      'actions': ['Pesan Ulang', 'Beri Nilai'],
    },
    {
      'kode': '#BLZ-20240929-12',
      'kursi': 'Kursi #03',
      'status': 'Selesai',
      'tanggal': '29 Sept 2024 • 11:15 WIB',
      'barber': 'Rian Wijaya',
      'tipe': 'KAPSTER / SENIOR BARBER',
      'layanan': 'Classic Gentleman Cut + Hot Towel Massage',
      'actions': ['Pesan Ulang', 'Beri Nilai'],
    },
  ];

  List<Map<String, dynamic>> get _filtered {
    if (_filterStatus == 'Semua') return _reservations;
    return _reservations
        .where((r) => r['status'] == _filterStatus)
        .toList();
  }

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
                        style: TextStyle(color: AppColors.muted, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.surface2,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Okt 2024',
                    style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
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
                  Row(
                    children: const [
                      Icon(Icons.history, color: AppColors.gold, size: 18),
                      SizedBox(width: 8),
                      Text(
                        'RIWAYAT AKTIVITAS',
                        style: TextStyle(
                          color: AppColors.muted,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Riwayat Reservasi &\nTransaksi',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Icon(Icons.location_on,
                          color: AppColors.muted, size: 13),
                      SizedBox(width: 4),
                      Text(
                        'Cabang Pontianak - Jl. Merdeka',
                        style:
                            TextStyle(color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  // Tab selector
                  Row(
                    children: ['Riwayat Reservasi', 'Riwayat Transaksi']
                        .map((tab) {
                      final active = tab == _activeTab;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _activeTab = tab),
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(vertical: 10),
                            margin: EdgeInsets.only(
                              right: tab == 'Riwayat Reservasi' ? 6 : 0,
                              left: tab == 'Riwayat Transaksi' ? 6 : 0,
                            ),
                            decoration: BoxDecoration(
                              color: active
                                  ? AppColors.gold.withAlpha(30)
                                  : AppColors.surface,
                              borderRadius: BorderRadius.circular(10),
                              border: active
                                  ? Border.all(color: AppColors.gold)
                                  : null,
                            ),
                            child: Text(
                              tab,
                              style: TextStyle(
                                color: active
                                    ? AppColors.gold
                                    : AppColors.muted,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Melihat daftar pemesanan & jadwal kapster sebelumnya',
                          style: TextStyle(
                              color: AppColors.muted, fontSize: 11),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.surface2,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${_filtered.length} Pemesanan',
                          style: const TextStyle(
                              color: AppColors.muted, fontSize: 11),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        'Semua',
                        'Terjadwal',
                        'Selesai',
                        'Dibatal',
                      ].map((f) {
                        final sel = f == _filterStatus;
                        return GestureDetector(
                          onTap: () =>
                              setState(() => _filterStatus = f),
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 7),
                            decoration: BoxDecoration(
                              color: sel
                                  ? AppColors.gold
                                  : AppColors.surface2,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              f,
                              style: TextStyle(
                                color: sel ? Colors.black : Colors.white,
                                fontSize: 12,
                                fontWeight: sel
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 16),
                  ..._filtered.map((r) => _card(context, r)),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(BuildContext context, Map<String, dynamic> r) {
    final status = r['status'] as String;
    final Color statusColor = status == 'Selesai'
        ? AppColors.green
        : status == 'Terjadwal'
            ? AppColors.gold
            : AppColors.red;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      r['kode'] as String,
                      style: const TextStyle(
                          color: AppColors.muted,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      r['kursi'] as String,
                      style: const TextStyle(
                          color: AppColors.muted, fontSize: 12),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withAlpha(30),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 0),
            child: Text(
              r['tanggal'] as String,
              style:
                  const TextStyle(color: AppColors.muted, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.surface2,
                  child: Icon(Icons.person,
                      color: AppColors.gold, size: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r['tipe'] as String,
                        style: const TextStyle(
                            color: AppColors.muted,
                            fontSize: 10,
                            letterSpacing: 0.5),
                      ),
                      Text(
                        r['barber'] as String,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        r['layanan'] as String,
                        style: const TextStyle(
                            color: AppColors.muted, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: (r['actions'] as List<String>).map((action) {
                final isPrimary = action == 'Lihat Tiket Antrean' ||
                    action == 'Pesan Ulang';
                final isDanger = action == 'Batalkan Reservasi';
                return GestureDetector(
                  onTap: () {
                    if (action == 'Lihat Tiket Antrean') {
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
                        horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: isDanger
                          ? AppColors.red.withAlpha(20)
                          : isPrimary
                              ? AppColors.gold.withAlpha(30)
                              : AppColors.surface2,
                      borderRadius: BorderRadius.circular(10),
                      border: isDanger
                          ? Border.all(
                              color: AppColors.red.withAlpha(100))
                          : isPrimary
                              ? Border.all(
                                  color:
                                      AppColors.gold.withAlpha(100))
                              : null,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (action == 'Pesan Ulang')
                          const Icon(Icons.refresh,
                              size: 13, color: AppColors.gold),
                        if (action == 'Beri Nilai')
                          const Icon(Icons.star_border,
                              size: 13, color: Colors.white),
                        if (action == 'Batalkan Reservasi')
                          const Icon(Icons.cancel_outlined,
                              size: 13, color: AppColors.red),
                        const SizedBox(width: 4),
                        Text(
                          action,
                          style: TextStyle(
                            color: isDanger
                                ? AppColors.red
                                : isPrimary
                                    ? AppColors.gold
                                    : Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
