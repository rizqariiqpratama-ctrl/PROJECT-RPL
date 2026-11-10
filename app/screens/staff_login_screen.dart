import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'staff/staff_home_screen.dart';

class StaffLoginScreen extends StatefulWidget {
  const StaffLoginScreen({super.key});

  @override
  State<StaffLoginScreen> createState() => _StaffLoginScreenState();
}

class _StaffLoginScreenState extends State<StaffLoginScreen> {
  final _idCtrl = TextEditingController();
  final _pinCtrl = TextEditingController();
  bool _hidePin = true;

  @override
  void dispose() {
    _idCtrl.dispose();
    _pinCtrl.dispose();
    super.dispose();
  }

  void _login() {
    if (_idCtrl.text.isEmpty || _pinCtrl.text.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Masukkan ID Barber dan PIN 6 digit!')),
      );
      return;
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(builder: (_) => const StaffHomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back_ios, size: 14, color: AppColors.muted),
                      Text(
                        '← Kembali ke Login Pelanggan',
                        style: TextStyle(color: AppColors.muted, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 28),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.surface2,
                  border: Border.all(color: AppColors.gold, width: 2),
                ),
                child: const Icon(Icons.content_cut, color: AppColors.gold, size: 32),
              ),
              const SizedBox(height: 14),
              const Text(
                'BLITZ BARBERSHOP',
                style: TextStyle(
                  color: AppColors.gold,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Login Staff Barber',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Masuk menggunakan akun barber resmi yang telah\ndiberikan oleh admin cabang.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.muted, fontSize: 13, height: 1.5),
              ),

              const SizedBox(height: 30),

              // ID Barber
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(Icons.badge_outlined, color: AppColors.gold, size: 16),
                    const SizedBox(width: 6),
                    const Text(
                      'ID Barber / Akun Admin',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _idCtrl,
                decoration: InputDecoration(
                  hintText: 'BLITZ-STF-084',
                  suffixIcon: const Icon(Icons.person_outline, color: AppColors.muted),
                ),
              ),

              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.lock_outline, color: AppColors.gold, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'PIN Keamanan 6-Digit',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Text(
                    'Lupa PIN / Akun? Hubungi Admin',
                    style: TextStyle(color: AppColors.gold, fontSize: 11),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _pinCtrl,
                keyboardType: TextInputType.number,
                maxLength: 6,
                obscureText: _hidePin,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8,
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: '• • • • • •',
                  hintStyle: const TextStyle(letterSpacing: 8, fontSize: 18),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _hidePin ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: AppColors.muted,
                    ),
                    onPressed: () => setState(() => _hidePin = !_hidePin),
                  ),
                ),
              ),

              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _login,
                child: const Text('Masuk ke Akun Barber  →'),
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.surface2,
                      ),
                      child: const Icon(Icons.headset_mic_outlined,
                          color: AppColors.gold, size: 18),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Belum menerima akun atau lupa PIN?',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'Hubungi Admin Barbershop',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chat_bubble_outline,
                        color: AppColors.gold, size: 20),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock, color: AppColors.muted, size: 12),
                  SizedBox(width: 6),
                  Text(
                    'AKSES TERPROTEKSI & TERENKRIPSI',
                    style: TextStyle(
                      color: AppColors.muted,
                      fontSize: 11,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                'Blitz Barbershop • Sistem Khusus Staff & Barber',
                style: TextStyle(color: AppColors.surface3, fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
