import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class CustomerDetailReservasiScreen extends StatelessWidget {
  const CustomerDetailReservasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.background,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 8),
                  Icon(Icons.arrow_back_ios, size: 16),
                  Text(
                    'Kembali ke Antrean',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            leadingWidth: 160,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Detail Reservasi',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.green.withAlpha(30),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.circle,
                                color: AppColors.green, size: 8),
                            SizedBox(width: 5),
                            Text(
                              'Terkonfirmasi',
                              style: TextStyle(
                                color: AppColors.green,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  // Patron card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: AppColors.gold.withAlpha(40),
                              child: const Text(
                                'RP',
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Randy Pratama',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.workspace_premium,
                                          color: AppColors.gold, size: 13),
                                      const SizedBox(width: 4),
                                      const Text(
                                        'Gold Member VIP',
                                        style: TextStyle(
                                            color: AppColors.gold,
                                            fontSize: 12),
                                      ),
                                      const Text(
                                        '  •  14×',
                                        style: TextStyle(
                                            color: AppColors.muted,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Sesi',
                                    style: TextStyle(
                                        color: AppColors.muted, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  '#BLZ-',
                                  style: TextStyle(
                                      color: AppColors.muted, fontSize: 10),
                                ),
                                Text(
                                  '20241028-02',
                                  style: TextStyle(
                                      color: AppColors.muted, fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.chat,
                                    color: AppColors.green, size: 16),
                                label: const Text(
                                  'WhatsApp\nPatron',
                                  style: TextStyle(
                                      color: AppColors.green, fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: AppColors.green),
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
                                icon: const Icon(Icons.call,
                                    color: Colors.white, size: 16),
                                label: const Text(
                                  'Telepon\nLangsung',
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: AppColors.surface2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Special notes
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.gold.withAlpha(60)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.build_outlined,
                                color: AppColors.gold, size: 14),
                            SizedBox(width: 6),
                            Text(
                              'CATATAN KHUSUS PATRON',
                              style: TextStyle(
                                color: AppColors.gold,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Kulit sensitif, suka gradasi mid-fade tajam, gunakan pomade matte clay aroma sandalwood.',
                          style: TextStyle(
                              color: Colors.white, fontSize: 13, height: 1.5),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Schedule
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'JADWAL & PENEMPATAN KURSI',
                              style: TextStyle(
                                color: AppColors.muted,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(Icons.location_on,
                                    color: AppColors.gold, size: 13),
                                SizedBox(width: 4),
                                Text(
                                  'Jl. Merdeka',
                                  style: TextStyle(
                                      color: AppColors.gold, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.access_time,
                                          color: AppColors.muted, size: 14),
                                      SizedBox(width: 4),
                                      Text(
                                        'Slot & Durasi',
                                        style: TextStyle(
                                            color: AppColors.muted,
                                            fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '15:30 - 16:15',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Senin, 28 Okt • 45 Mnt',
                                    style: TextStyle(
                                        color: AppColors.muted, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.chair,
                                          color: AppColors.muted, size: 14),
                                      SizedBox(width: 4),
                                      Text(
                                        'Stasiun Barber',
                                        style: TextStyle(
                                            color: AppColors.muted,
                                            fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Kursi Master\n#02',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.gold),
                                  ),
                                  const Text(
                                    'Barber Dimas Pratama',
                                    style: TextStyle(
                                        color: AppColors.muted, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Style reference
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.bookmarks_outlined,
                                color: AppColors.gold, size: 14),
                            SizedBox(width: 6),
                            Text(
                              'Referensi Model Pilihan',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 70,
                                height: 70,
                                color: AppColors.surface2,
                                child: const Icon(Icons.image_outlined,
                                    color: AppColors.muted),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'French Crop Texture',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Mid Fade & Temple Taper',
                                  style: TextStyle(
                                      color: AppColors.muted, fontSize: 12),
                                ),
                                Text(
                                  'Lineup tegas depan, tekstur natural',
                                  style: TextStyle(
                                      color: AppColors.muted, fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  // Service details
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Rincian Paket Layanan',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.green.withAlpha(30),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.check_circle_outline,
                                      color: AppColors.green, size: 12),
                                  SizedBox(width: 4),
                                  Text(
                                    'QRIS LUNAS',
                                    style: TextStyle(
                                      color: AppColors.green,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        _serviceLine(
                            'Gentleman Executive Cut',
                            'Konsultasi, hair wash & styling',
                            'Rp 65.000'),
                        const SizedBox(height: 8),
                        _serviceLine(
                            'Hair Tonic Ginseng & Hot Towel',
                            'Add-on scalp therapy',
                            'Rp 20.000'),
                        const Divider(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Total Tagihan Paket',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Rp 85.000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.gold.withAlpha(20),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.account_balance_wallet_outlined,
                                  color: AppColors.gold, size: 18),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ESTIMASI KOMISI STAF (50%)',
                                      style: TextStyle(
                                        color: AppColors.gold,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    Text(
                                      'Langsung dicatat ke slip insentif',
                                      style: TextStyle(
                                          color: AppColors.muted,
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Rp',
                                    style: TextStyle(
                                        color: AppColors.gold, fontSize: 12),
                                  ),
                                  Text(
                                    '42.500',
                                    style: TextStyle(
                                      color: AppColors.gold,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.location_on, color: AppColors.muted, size: 13),
                      SizedBox(width: 4),
                      Text(
                        'Blitz Barbershop • Cabang Jl. Merdeka, Pontianak Kota',
                        style: TextStyle(
                            color: AppColors.muted, fontSize: 11),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.play_circle_outline, size: 20),
          label: const Text('Mulai Layani di Kursi #02  →'),
        ),
      ),
    );
  }

  Widget _serviceLine(String title, String sub, String price) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 13)),
              Text(sub,
                  style: const TextStyle(
                      color: AppColors.muted, fontSize: 11)),
            ],
          ),
        ),
        Text(price, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
