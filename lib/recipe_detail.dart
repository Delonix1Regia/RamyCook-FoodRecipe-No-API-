import 'package:flutter/material.dart';

class RecipeDetail extends StatelessWidget {
  final String imagePath;
  final String title;
  final int rating;
  final List<String> ingredients;
  final List<String> steps;

  const RecipeDetail({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.ingredients,
    required this.steps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set background AppBar menjadi hitam
        iconTheme:
            IconThemeData(color: Colors.white), // Panah back berwarna putih
        title: Text(
          title,
          style:
              TextStyle(color: Colors.white), // Text di AppBar berwarna putih
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              SizedBox(height: 8),
              // Title with black background
              Container(
                color: Colors.black, // Background color for title
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Rating: $rating/5',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, 
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white, 
                ),
              ),
              ...ingredients.map((ingredient) => Text(
                    '- $ingredient',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, 
                    ),
                  )),
              SizedBox(height: 16),
              Text(
                'Steps:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white, 
                ),
              ),
              ...steps.map((step) => Text(
                    '- $step',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, 
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
