import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class CustomerLayananTab extends StatefulWidget {
  const CustomerLayananTab({super.key});

  @override
  State<CustomerLayananTab> createState() => _CustomerLayananTabState();
}

class _CustomerLayananTabState extends State<CustomerLayananTab> {
  String _selectedCategory = 'Semua';
  final List<String> _categories = [
    'Semua',
    'Potong Rambut',
    'Cukur Jenggot',
    'Keramas',
    'Paket',
  ];

  final List<Map<String, dynamic>> _services = [
    {
      'title': 'Paket Komplit Sultan (Cukur + Pijat + Masker)',
      'duration': '75 Menit',
      'desc': 'Potong Rambut Rapi + Cukur Kumis Jenggot + Masker Wajah Scrub Alami + Pijat Kepala & Pundak Rileks.',
      'price': 'Rp 185.000',
      'badge': 'Bundling Hemat',
      'badgeColor': AppColors.gold,
      'category': 'Paket',
    },
    {
      'title': 'Pangkas Rambut Klasik & Fade (Gradasi)',
      'duration': '45 Menit',
      'desc': 'Konsultasi model rambut, cuci rambut wangi, pijat leher ringan, handuk hangat aromatersap, dan styling pomade.',
      'price': 'Rp 95.000',
      'badge': 'Paling Populer',
      'badgeColor': AppColors.blue,
      'category': 'Potong Rambut',
      'selected': true,
    },
    {
      'title': 'Cukur Kumis & Jenggot Handuk Hangat',
      'duration': '30 Menit',
      'desc': 'Cukur kumis dan jenggot presisi tajam tradisional dilabur busa hangat tebal, kompres handuk panas herbal, dan balsem penyejuk.',
      'price': 'Rp 60.000',
      'category': 'Cukur Jenggot',
    },
    {
      'title': 'Rapikan Kumis & Jenggot Presisi',
      'duration': '25 Menit',
      'desc': 'Membentuk garis tepi jenggot rapi sesuai bentuk rahang, finishing vitamin minyak jenggot herbal.',
      'price': 'Rp 50.000',
      'category': 'Cukur Jenggot',
    },
    {
      'title': 'Keramas Detox & Perawatan Ketombe',
      'duration': '35 Menit',
      'desc': 'Pijat kulit kepala rileksasi dengan serum mint dingin, pembersihan ketombe, dan hair tonic penyubur rambut.',
      'price': 'Rp 75.000',
      'category': 'Keramas',
    },
  ];

  List<Map<String, dynamic>> get _filtered {
    if (_selectedCategory == 'Semua') {
      return _services;
    }
    return _services
        .where((s) => s['category'] == _selectedCategory)
        .toList();
  }

  int _selectedCount = 1;
  String _selectedPrice = 'Rp 95.000';

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
              children: [
                const Text(
                  'Layanan & Barber',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 11,
                      color: AppColors.muted,
                    ),
                    const Text(
                      'Pontianak, Jl. Merd...',
                      style: TextStyle(fontSize: 11, color: AppColors.muted),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: const CircleAvatar(
                  radius: 17,
                  backgroundColor: AppColors.surface2,
                  child: Icon(Icons.person, color: AppColors.gold, size: 18),
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari layanan atau nama barber...',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.muted,
                    ),
                    filled: true,
                    fillColor: AppColors.surface,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.list, size: 16),
                          label: const Text('Daftar Layanan'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.gold,
                            side: const BorderSide(color: AppColors.gold),
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
                          icon: const Icon(Icons.person_outline, size: 16),
                          label: const Text('Pilih Barber'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: AppColors.surface2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _categories.map((c) {
                        final selected = c == _selectedCategory;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            onTap: () =>
                                setState(() => _selectedCategory = c),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 7),
                              decoration: BoxDecoration(
                                color: selected
                                    ? AppColors.gold
                                    : AppColors.surface2,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                c,
                                style: TextStyle(
                                  color:
                                      selected ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontWeight: selected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 14),
                  ..._filtered.map((s) => _serviceCard(s)),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          border: Border(top: BorderSide(color: AppColors.surface2)),
        ),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$_selectedCount Layanan Dipilih',
                  style: const TextStyle(
                    color: AppColors.muted,
                    fontSize: 11,
                  ),
                ),
                Text(
                  _selectedPrice,
                  style: const TextStyle(
                    color: AppColors.gold,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '¹ incl.',
                  style: TextStyle(color: AppColors.muted, fontSize: 10),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Lanjut ke Reservasi Online →'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _serviceCard(Map<String, dynamic> s) {
    final bool selected = s['selected'] == true;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: selected
            ? Border.all(color: AppColors.gold, width: 1.5)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (s['badge'] != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: (s['badgeColor'] as Color).withAlpha(30),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  s['badge'] as String,
                  style: TextStyle(
                    color: s['badgeColor'] as Color,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 70,
                    height: 70,
                    color: AppColors.surface2,
                    child: const Icon(
                      Icons.content_cut,
                      color: AppColors.gold,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s['title'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          const Icon(Icons.access_time,
                              size: 12, color: AppColors.muted),
                          const SizedBox(width: 4),
                          Text(
                            s['duration'] as String,
                            style: const TextStyle(
                                color: AppColors.muted, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        s['desc'] as String,
                        style: const TextStyle(
                            color: AppColors.muted,
                            fontSize: 11,
                            height: 1.4),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            s['price'] as String,
                            style: const TextStyle(
                              color: AppColors.gold,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: selected
                                    ? AppColors.gold
                                    : AppColors.surface2,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                selected ? 'Dipilih ✓' : '+ Pilih Layanan',
                                style: TextStyle(
                                  color: selected
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
        ],
      ),
    );
  }
}
