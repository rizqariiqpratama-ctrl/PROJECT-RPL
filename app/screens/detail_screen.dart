
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Reservasi'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF60471F),
                  Color(0xFF29241B),
                ],
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'KODE RESERVASI',
                  style: TextStyle(
                    color: AppColors.goldLight,
                    fontSize: 11,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '#BLZ-001',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'TERJADWAL',
                  style: TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),
          const Text(
            'Informasi Pelanggan',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),

          _info(Icons.person, 'Nama Pelanggan', 'Denny Saputra'),
          _info(Icons.phone, 'Nomor WhatsApp', '0812 8890 2341'),
          _info(Icons.calendar_month, 'Tanggal', '28 Oktober 2024'),
          _info(Icons.access_time, 'Waktu', '15:30 WIB'),
          _info(Icons.chair, 'Nomor Kursi', 'Kursi #02'),
          _info(Icons.content_cut, 'Master Barber', 'Dimas Pratama'),

          const SizedBox(height: 22),
          const Text(
            'Rincian Layanan',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(17),
            ),
            child: const Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text('Gentleman Executive Cut')),
                    Text('Rp95.000'),
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hair Wash & Styling',
                        style: TextStyle(color: AppColors.muted),
                      ),
                    ),
                    Text(
                      'Termasuk',
                      style: TextStyle(color: AppColors.green),
                    ),
                  ],
                ),
                Divider(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Total Pembayaran',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Rp95.000',
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Reservasi berhasil dikonfirmasi (simulasi).'),
                ),
              );
            },
            child: const Text('Konfirmasi Reservasi'),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () => Navigator.pop(context),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.gold,
              side: const BorderSide(color: AppColors.gold),
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }

  Widget _info(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.gold),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.muted,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
