
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'widgets/stat_card.dart';
import 'widgets/chart_card.dart';
import 'widgets/activity_item.dart';
import 'detail_screen.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text(
          'Halo, Dimas!',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Text(
          'Berikut ringkasan aktivitas hari ini.',
          style: TextStyle(color: AppColors.muted),
        ),
        const SizedBox(height: 20),

        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Color(0xFF59401A), Color(0xFF25221D)],
            ),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BLITZ BARBERSHOP',
                style: TextStyle(
                  color: AppColors.goldLight,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Cabang Pontianak',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                'Jl. Merdeka, Pontianak',
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Icon(Icons.access_time, color: AppColors.gold),
                  SizedBox(width: 8),
                  Text('09:00 - 21:00 WIB'),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 22),
        const Text(
          'Ringkasan Hari Ini',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        const Row(
          children: [
            Expanded(
              child: StatCard(
                title: 'Reservasi',
                value: '12',
                icon: Icons.calendar_month,
                note: 'Hari ini',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: StatCard(
                title: 'Antrean',
                value: '06',
                icon: Icons.confirmation_number,
                note: 'Menunggu',
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Expanded(
              child: StatCard(
                title: 'Pendapatan',
                value: '850K',
                icon: Icons.payments,
                note: 'Hari ini',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: StatCard(
                title: 'Rating',
                value: '4.95',
                icon: Icons.star,
                note: '520 ulasan',
              ),
            ),
          ],
        ),

        const SizedBox(height: 22),
        const ChartCard(),
        const SizedBox(height: 22),

        const Text(
          'Aktivitas Terbaru',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        const ActivityItem(
          name: 'Denny Saputra',
          detail: 'Pangkas Rapi • 10:00 WIB',
          amount: 'Rp45.000',
          status: 'Selesai',
          initials: 'DS',
        ),
        const SizedBox(height: 10),
        const ActivityItem(
          name: 'Farhan Rizky',
          detail: 'Hair Wash • 11:30 WIB',
          amount: 'Rp65.000',
          status: 'Selesai',
          initials: 'FR',
        ),
        const SizedBox(height: 10),
        const ActivityItem(
          name: 'Adrian Maulana',
          detail: 'Fade Haircut • 13:00 WIB',
          amount: 'Menunggu',
          status: 'Antrean',
          initials: 'AM',
        ),

        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const DetailScreen(),
              ),
            );
          },
          icon: const Icon(Icons.receipt_long),
          label: const Text('Lihat Detail Reservasi'),
        ),
      ],
    );
  }
}
