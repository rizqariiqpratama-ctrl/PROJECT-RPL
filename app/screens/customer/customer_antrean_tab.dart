import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class CustomerAntreanTab extends StatefulWidget {
  const CustomerAntreanTab({super.key});

  @override
  State<CustomerAntreanTab> createState() => _CustomerAntreanTabState();
}

class _CustomerAntreanTabState extends State<CustomerAntreanTab> {
  bool _hasTicket = true;
  bool _showStatus = true;

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
                  'Status & Tiket Walk-in',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'ang Pontianak, Jl. Merd▾',
                  style: TextStyle(fontSize: 11, color: AppColors.muted),
                ),
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: const CircleAvatar(
                  radius: 17,
                  backgroundColor: AppColors.surface2,
                  child: Icon(Icons.person, color: AppColors.gold, size: 18),
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
                  // Toggle tabs
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _showStatus = true),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: _showStatus ? AppColors.gold.withAlpha(30) : AppColors.surface2,
                              borderRadius: BorderRadius.circular(10),
                              border: _showStatus
                                  ? Border.all(color: AppColors.gold)
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.confirmation_number_outlined,
                                  color: _showStatus ? AppColors.gold : AppColors.muted,
                                  size: 16,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  'Status Antrean Aktif',
                                  style: TextStyle(
                                    color: _showStatus ? AppColors.gold : AppColors.muted,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _showStatus = false),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: !_showStatus ? AppColors.gold.withAlpha(30) : AppColors.surface2,
                              borderRadius: BorderRadius.circular(10),
                              border: !_showStatus
                                  ? Border.all(color: AppColors.gold)
                                  : null,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: !_showStatus ? AppColors.gold : AppColors.muted,
                                  size: 16,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  'Ambil Antrean Walk-in',
                                  style: TextStyle(
                                    color: !_showStatus ? AppColors.gold : AppColors.muted,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  if (_showStatus && _hasTicket) ...[
                    // Ticket status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.circle, color: AppColors.gold, size: 8),
                            const SizedBox(width: 6),
                            const Text(
                              'NOMOR ANTREAN ANDA',
                              style: TextStyle(
                                color: AppColors.muted,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: AppColors.gold.withAlpha(30),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.access_time, color: AppColors.gold, size: 12),
                              SizedBox(width: 4),
                              Text(
                                'Menunggu',
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        'A - 14',
                        style: TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.w900,
                          color: AppColors.gold,
                          letterSpacing: 4,
                        ),
                      ),
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.content_cut, color: AppColors.muted, size: 14),
                          SizedBox(width: 6),
                          Text(
                            'Barber: Dimas Pratama (Kursi #2)',
                            style: TextStyle(color: AppColors.muted, fontSize: 13),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Text(
                      'Status Pelayanan',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    _statusBar(),

                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sedang Dilayani:',
                            style: TextStyle(color: AppColors.muted, fontSize: 12),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'SCISSORS',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: AppColors.gold,
                              letterSpacing: 3,
                            ),
                          ),
                          const Text(
                            'Sisa 2 antrean di depan',
                            style: TextStyle(color: AppColors.muted, fontSize: 12),
                          ),
                          const Divider(height: 16),
                          Row(
                            children: [
                              const Icon(Icons.alarm, color: AppColors.gold, size: 16),
                              const SizedBox(width: 6),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Estimasi Giliran:',
                                    style: TextStyle(
                                      color: AppColors.muted,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    '~15-20 Min',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    '(Perkiraan 14:15 WIB)',
                                    style: TextStyle(
                                      color: AppColors.muted,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.location_on, size: 18),
                      label: const Text('Konfirmasi Tiba di Outlet'),
                    ),
                    const SizedBox(height: 10),
                    OutlinedButton.icon(
                      onPressed: () => setState(() {}),
                      icon: const Icon(Icons.refresh, size: 16),
                      label: const Text('Refresh Status Antrean'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48),
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: AppColors.surface2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],

                  // Walk-in section
                  _walkInSection(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _statusBar() {
    return Row(
      children: [
        _statusStep('1. Menunggu', true, false),
        Expanded(child: Container(height: 2, color: AppColors.surface2)),
        _statusStep('2. Sedang Dilayani', false, false),
        Expanded(child: Container(height: 2, color: AppColors.surface2)),
        _statusStep('3. Selesai', false, true),
      ],
    );
  }

  Widget _statusStep(String label, bool active, bool check) {
    return Column(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? AppColors.gold : AppColors.surface2,
            border: active ? null : Border.all(color: AppColors.surface3),
          ),
          child: Icon(
            check ? Icons.check : Icons.access_time,
            color: active ? Colors.black : AppColors.muted,
            size: 14,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: active ? AppColors.gold : AppColors.muted,
            fontSize: 9,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _walkInSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.people_outline, color: AppColors.gold, size: 20),
              const SizedBox(width: 8),
              const Text(
                'Ambil Antrean Walk-in',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.green.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Online Check-in',
                  style: TextStyle(color: AppColors.green, fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Ambil nomor antrean sebelum datang langsung ke barbershop agar Anda tidak perlu menunggu terlalu lama di outlet.',
            style: TextStyle(color: AppColors.muted, fontSize: 12, height: 1.5),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Lokasi Barbershop', style: TextStyle(color: AppColors.muted, fontSize: 11)),
                    Text('Cabang Jl. Merdeka', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Antrean Berjalan Sekarang', style: TextStyle(color: AppColors.muted, fontSize: 11)),
                    Text('Nomor A-12 (2 Menunggu)', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Text(
            'Perkiraan Mulai Dilayani:  ~25 Menit Lagi',
            style: TextStyle(color: AppColors.muted, fontSize: 12),
          ),
          const SizedBox(height: 14),
          ElevatedButton.icon(
            onPressed: () {
              setState(() => _hasTicket = true);
            },
            icon: const Icon(Icons.confirmation_number, size: 18),
            label: const Text('Ambil Nomor Antrean Walk-in Sekarang'),
          ),
          const SizedBox(height: 10),
          const Text(
            '⚠ Setelah mengambil tiket, segera meluncur ke outlet dan tekan \'Konfirmasi Tiba di Outlet\'.',
            style: TextStyle(color: AppColors.muted, fontSize: 11, height: 1.4),
          ),
        ],
      ),
    );
  }
}
