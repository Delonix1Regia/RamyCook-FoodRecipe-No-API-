import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap; // Tambahkan parameter onTap

  const CategoryTab({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap, // Pastikan onTap diinisialisasi
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Gunakan onTap ketika tab ditekan
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
