import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'login_screen.dart';

class SetNewPinScreen extends StatefulWidget {
  const SetNewPinScreen({super.key});

  @override
  State<SetNewPinScreen> createState() => _SetNewPinScreenState();
}

class _SetNewPinScreenState extends State<SetNewPinScreen> {
  final _pinCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();
  bool _hidePin = true;
  bool _hideConfirm = true;

  bool get _pinMatch =>
      _pinCtrl.text.isNotEmpty &&
      _pinCtrl.text == _confirmCtrl.text &&
      _pinCtrl.text.length == 6;

  void _save() {
    if (!_pinMatch) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('PIN tidak cocok atau kurang dari 6 digit!')),
      );
      return;
    }
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute<void>(builder: (_) => const LoginScreen()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios, size: 18),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'BLITZ PONTIANAK',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Text(
                          'Set New Credentials',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.surface2,
                    ),
                    child: const Icon(Icons.person_outline,
                        color: AppColors.muted, size: 18),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.gold.withAlpha(30),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle, color: AppColors.gold, size: 7),
                        SizedBox(width: 5),
                        Text(
                          'LANGKAH 2 DARI 2',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.check_circle_outline,
                          color: AppColors.green, size: 14),
                      const SizedBox(width: 4),
                      const Text(
                        'OTP Terverifikasi',
                        style: TextStyle(color: AppColors.green, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 28),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.surface2,
                  border: Border.all(color: AppColors.surface3),
                ),
                child: const Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.shield, color: AppColors.surface3, size: 48),
                    Icon(Icons.content_cut, color: AppColors.gold, size: 22),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'Buat PIN Baru',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Identitas terverifikasi. Silakan atur 6-digit PIN\nkeamanan baru untuk masuk ke akun Anda.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.muted, fontSize: 13, height: 1.5),
              ),

              const SizedBox(height: 24),

              // Username locked
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.badge_outlined,
                          color: AppColors.gold, size: 14),
                      const SizedBox(width: 6),
                      const Text(
                        'USERNAME AKUN TERDAFTAR',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: AppColors.muted,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.lock, color: AppColors.muted, size: 12),
                      const SizedBox(width: 4),
                      const Text(
                        'Terkunci',
                        style: TextStyle(
                          color: AppColors.muted,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.surface2),
                ),
                child: Row(
                  children: [
                    const Text(
                      'randy_pratama',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.surface2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.lock, color: AppColors.muted, size: 12),
                          SizedBox(width: 4),
                          Text(
                            'TETAP',
                            style: TextStyle(
                              color: AppColors.muted,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.info_outline,
                      color: AppColors.muted, size: 13),
                  const SizedBox(width: 6),
                  const Text(
                    'Username terikat permanen dengan keanggotaan\nBlitz Pontianak Anda.',
                    style: TextStyle(color: AppColors.muted, fontSize: 11, height: 1.4),
                  ),
                ],
              ),

              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.key, color: AppColors.gold, size: 14),
                      const SizedBox(width: 6),
                      const Text(
                        'PIN Keamanan Baru (6 Digit)',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppColors.gold.withAlpha(30),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'BARU',
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _pinCtrl,
                keyboardType: TextInputType.number,
                maxLength: 6,
                obscureText: _hidePin,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Masukkan 6 angka PIN baru',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _hidePin
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.muted,
                    ),
                    onPressed: () => setState(() => _hidePin = !_hidePin),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              const Row(
                children: [
                  Icon(Icons.circle, color: AppColors.muted, size: 6),
                  SizedBox(width: 6),
                  Text(
                    'Tepat 6 digit angka',
                    style: TextStyle(color: AppColors.muted, fontSize: 11),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.circle, color: AppColors.muted, size: 6),
                  SizedBox(width: 6),
                  Text(
                    'Bukan angka berulang',
                    style: TextStyle(color: AppColors.muted, fontSize: 11),
                  ),
                ],
              ),

              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.refresh, color: AppColors.gold, size: 14),
                      SizedBox(width: 6),
                      Text(
                        'Konfirmasi PIN Baru',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  if (_pinMatch)
                    Row(
                      children: [
                        const Icon(Icons.check_circle_outline,
                            color: AppColors.green, size: 14),
                        const SizedBox(width: 4),
                        const Text(
                          'PIN Cocok',
                          style: TextStyle(
                            color: AppColors.green,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _confirmCtrl,
                keyboardType: TextInputType.number,
                maxLength: 6,
                obscureText: _hideConfirm,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Ulangi 6 angka PIN baru',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _hideConfirm
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.muted,
                    ),
                    onPressed: () =>
                        setState(() => _hideConfirm = !_hideConfirm),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.info_outline,
                      color: AppColors.muted, size: 13),
                  const SizedBox(width: 6),
                  const Text(
                    'Pastikan urutan angka identik dengan kolom di atas.',
                    style: TextStyle(color: AppColors.muted, fontSize: 11),
                  ),
                ],
              ),

              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _save,
                child: const Text('Simpan PIN & Masuk ke Akun  →'),
              ),

              const SizedBox(height: 14),
              Text.rich(
                const TextSpan(
                  text: 'Setelah disimpan, Anda dapat langsung login\nmenggunakan username ',
                  style: TextStyle(
                    color: AppColors.muted,
                    fontSize: 12,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: '@randy_pratama',
                      style: TextStyle(
                        color: AppColors.gold,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' dan PIN baru\nini.'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),
              const Text(
                'BLITZ GENTLEMAN\'S BLADE • CABANG PONTIANAK',
                style: TextStyle(
                  color: AppColors.surface3,
                  fontSize: 10,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
