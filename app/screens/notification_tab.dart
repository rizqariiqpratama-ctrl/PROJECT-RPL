
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': 'Reservasi Baru',
        'message': 'Denny Saputra membuat reservasi pukul 15:30 WIB.',
        'time': '5 menit lalu',
        'icon': Icons.calendar_month,
      },
      {
        'title': 'Antrean Berjalan',
        'message': 'Nomor antrean A-14 sedang menunggu pelayanan.',
        'time': '30 menit lalu',
        'icon': Icons.confirmation_number,
      },
      {
        'title': 'Jadwal Barber',
        'message': 'Jadwal kerja minggu ini telah diperbarui.',
        'time': 'Kemarin',
        'icon': Icons.schedule,
      },
      {
        'title': 'Ulasan Pelanggan',
        'message': 'Anda menerima ulasan baru dengan rating 5.0.',
        'time': 'Kemarin',
        'icon': Icons.star,
      },
    ];

    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text(
          'Notifikasi',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Informasi terbaru Blitz Barbershop.',
          style: TextStyle(color: AppColors.muted),
        ),
        const SizedBox(height: 20),

        ...notifications.map((item) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.gold.withOpacity(0.13),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Icon(
                    item['icon'] as IconData,
                    color: AppColors.gold,
                  ),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        item['message'] as String,
                        style: const TextStyle(
                          color: AppColors.muted,
                          fontSize: 12,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['time'] as String,
                        style: const TextStyle(
                          color: AppColors.gold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.circle,
                  color: AppColors.gold,
                  size: 8,
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
