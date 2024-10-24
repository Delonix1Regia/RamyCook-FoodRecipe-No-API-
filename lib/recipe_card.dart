import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int rating;
  final VoidCallback onTap;

  const RecipeCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey[800],
        child: Column(
          children: [
            // Menyediakan ukuran gambar yang tetap
            Container(
              width: double.infinity, // Mengisi lebar kartu
              height: 150, // Mengatur tinggi gambar
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Mengatur gambar agar menutupi area
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Rating: $rating/5',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
