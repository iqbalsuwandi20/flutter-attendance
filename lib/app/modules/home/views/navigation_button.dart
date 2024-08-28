import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.

/// Widget tombol navigasi dengan label dan aksi.
class NavigationButton extends StatelessWidget {
  final String label; // Label tombol.
  final VoidCallback onPressed; // Aksi yang dipanggil saat tombol ditekan.

  const NavigationButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Aksi yang dipanggil saat tombol ditekan.
      child: Text(label), // Teks tombol.
    );
  }
}
