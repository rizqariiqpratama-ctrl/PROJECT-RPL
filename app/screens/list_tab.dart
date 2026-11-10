
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'detail_screen.dart';

class ListTab extends StatefulWidget {
  const ListTab({super.key});

  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
  String filter = 'Semua';

  final List<Map<String, String>> reservations = [
    {
      'kode': '#BLZ-001',
      'nama': 'Denny Saputra',
      'tanggal': 'Hari ini • 15:30 WIB',
      'layanan': 'Gentleman Executive Cut',
      'status': 'Terjadwal',
    },
    {
      'kode': '#BLZ-002',
      'nama': 'Farhan Rizky',
      'tanggal': 'Hari ini • 16:15 WIB',
      'layanan': 'French Crop Fade',
      'status': 'Menunggu',
    },
    {
      'kode': '#BLZ-003',
      'nama': 'Adrian Maulana',
      'tanggal': 'Kemarin • 14:00 WIB',
      'layanan': 'Classic Gentleman Cut',
      'status': 'Selesai',
    },
    {
      'kode': '#BLZ-004',
      'nama': 'Rizky Pratama',
      'tanggal': 'Kemarin • 11:15 WIB',
      'layanan': 'Hot Towel Massage',
      'status': 'Dibatalkan',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filtered = reservations.where((item) {
      return filter == 'Semua' || item['status'] == filter;
    }).toList();

    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text(
          'Reservasi & Antrean',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Daftar reservasi pelanggan Blitz Barbershop.',
          style: TextStyle(color: AppColors.muted),
        ),
        const SizedBox(height: 18),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ['Semua', 'Terjadwal', 'Menunggu', 'Selesai', 'Dibatalkan']
                .map((value) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(
                  label: Text(value),
                  selected: filter == value,
                  selectedColor: AppColors.gold,
                  labelStyle: TextStyle(
                    color: filter == value ? Colors.black : Colors.white,
                  ),
                  onSelected: (_) {
                    setState(() => filter = value);
                  },
                ),
              );
            }).toList(),
          ),
        ),

        const SizedBox(height: 18),

        ...filtered.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: InkWell(
              borderRadius: BorderRadius.circular(17),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => const DetailScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item['kode']!,
                            style: const TextStyle(
                              color: AppColors.gold,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          item['status']!,
                          style: TextStyle(
                            color: item['status'] == 'Selesai'
                                ? AppColors.green
                                : item['status'] == 'Dibatalkan'
                                    ? AppColors.red
                                    : AppColors.gold,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      item['nama']!,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item['tanggal']!,
                      style: const TextStyle(
                        color: AppColors.muted,
                        fontSize: 12,
                      ),
                    ),
                    const Divider(height: 25, color: AppColors.surface2),
                    Text(item['layanan']!),
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 16,
                          color: AppColors.gold,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Master Barber: Dimas Pratama',
                          style: TextStyle(
                            color: AppColors.muted,
                            fontSize: 11,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Detail →',
                          style: TextStyle(color: AppColors.gold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }),

        if (filtered.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                'Tidak ada reservasi.',
                style: TextStyle(color: AppColors.muted),
              ),
            ),
          ),
      ],
    );
  }
}
