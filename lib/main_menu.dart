import 'package:flutter/material.dart';
import 'package:slicing_ui/splash_screen.dart';
import 'category_tab.dart';
import 'recipe_card.dart';
import 'recipe_detail.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  String currentCategory = 'All'; // Default kategori

  // Daftar resep sesuai kategori
  final Map<String, List<Map<String, dynamic>>> recipes = {
    'All': [
      {
        'image': 'assets/images/buryam.jpg',
        'title': 'Bubur Ayam',
        'rating': 4,
        'ingredients': [
          'Beras',
          'Santan',
          'Air',
          'Garam',
          'Daun salam',
          'Ayam (rebus, suwir)',
          'Bumbu halus (bawang merah, bawang putih, jahe, kunyit)',
          'Pelengkap (bawang goreng, daun bawang, seledri, kerupuk, kecap manis, sambal)',
        ],
        'steps': [
          'Rebus beras, santan, air, garam, dan daun salam hingga menjadi bubur.',
          'Tumis bumbu halus, masukkan suwiran ayam.',
          'Sajikan bubur dengan tambahan suwiran ayam, pelengkap, dan kuah kaldu.',
        ],
      },
      {
        'image': 'assets/images/nasduk.jpg',
        'title': 'Nasi Uduk',
        'rating': 4,
        'ingredients': [
          'Beras',
          'Santan',
          'Daun pandan',
          'Sereh',
          'Lengkuas',
          'Bumbu halus (bawang merah, bawang putih, kemiri, ketumbar)',
          'Garam',
        ],
        'steps': [
          'Tumis bumbu halus hingga harum, masukkan daun pandan, sereh, dan lengkuas.',
          'Masukkan beras yang sudah dicuci bersih, aduk rata.',
          'Tambahkan santan dan garam, masak hingga nasi matang dan santan meresap.',
        ],
      },
      {
        'image': 'assets/images/nasdang.jpg',
        'title': 'Nasi Padang',
        'rating': 5,
        'ingredients': [
          'Nasi putih',
          'Lauk pauk (rendang, ayam goreng, ikan, sayur nangka, sambal)',
        ],
        'steps': [
          'Masak nasi putih hingga matang.',
          'Siapkan berbagai macam lauk pauk khas Padang.',
          'Sajikan nasi putih bersama lauk pauk di atas piring.',
        ],
      },
      {
        'image': 'assets/images/soto ayam.jpg',
        'title': 'Soto Ayam',
        'rating': 5,
        'ingredients': [
          'Ayam potong',
          'Air',
          'Bumbu halus (bawang merah, bawang putih, kunyit, ketumbar)',
          'Jahe',
          'Lengkuas',
          'Serai',
          'Daun jeruk',
          'Soun',
          'Tauge',
          'Telur rebus',
          'Bawang goreng, seledri, jeruk nipis',
        ],
        'steps': [
          'Rebus ayam hingga matang, suwir dagingnya.',
          'Tumis bumbu halus hingga harum, masukkan jahe, lengkuas, serai, dan daun jeruk.',
          'Masukkan air, rebus hingga mendidih.',
          'Masukkan suwiran ayam, soun, dan tauge. Masak hingga matang.',
          'Sajikan dengan taburan bawang goreng, seledri, dan perasan jeruk nipis.',
        ],
      },
      {
        'image': 'assets/images/omelet.jpg',
        'title': 'Omelet',
        'rating': 5,
        'ingredients': [
          'Telur',
          'Bawang bombay',
          'Wortel (opsional)',
          'Garam',
          'Merica',
        ],
        'steps': [
          'Kocok telur hingga berbusa.',
          'Tumis bawang bombay dan wortel hingga layu.',
          'Masukkan tumisan sayuran ke dalam kocokan telur. Bumbui dengan garam dan merica.',
          'Goreng hingga matang.',
        ],
      },
      {
        'image': 'assets/images/pancake.jpg',
        'title': 'Pancake',
        'rating': 5,
        'ingredients': [
          'Tepung terigu',
          'Telur',
          'Susu',
          'Gula',
          'Baking powder',
          'Margarin (untuk menggoreng)',
        ],
        'steps': [
          'Campur semua bahan hingga rata.',
          'Panaskan teflon, olesi dengan margarin.',
          'Tuang adonan sedikit demi sedikit, masak hingga matang kecoklatan.',
        ],
      },
      {
        'image': 'assets/images/nasi campur.jpg',
        'title': 'Nasi Campur',
        'rating': 5,
        'ingredients': [
          'Nasi putih',
          'Lauk pauk (ayam goreng, telur balado, sayur asem, sambal, kerupuk)',
        ],
        'steps': [
          'Masak nasi putih hingga matang.',
          'Siapkan berbagai macam lauk pauk.',
          'Sajikan nasi putih bersama lauk pauk di atas piring.',
        ],
      },
      {
        'image': 'assets/images/gulai.jpg',
        'title': 'Gulai',
        'rating': 5,
        'ingredients': [
          'Daging sapi atau ayam',
          'Santan',
          'Bumbu halus (bawang merah, bawang putih, kunyit, kemiri, ketumbar)',
          'Jahe',
          'Lengkuas',
          'Serai',
          'Daun kunyit',
          'Santan kental',
          'Garam',
        ],
        'steps': [
          'Tumis bumbu halus hingga harum, masukkan jahe, lengkuas, serai, dan daun kunyit.',
          'Masukkan daging, masak hingga berubah warna.',
          'Tuang santan encer, masak hingga mendidih.',
          'Masukkan santan kental, masak hingga kuah mengental dan bumbu meresap.',
        ],
      },
    ],
    'Breakfast': [
      {
        'image': 'assets/images/buryam.jpg',
        'title': 'Bubur Ayam',
        'rating': 4,
        'ingredients': [
          'Beras',
          'Santan',
          'Air',
          'Garam',
          'Daun salam',
          'Ayam (rebus, suwir)',
          'Bumbu halus (bawang merah, bawang putih, jahe, kunyit)',
          'Pelengkap (bawang goreng, daun bawang, seledri, kerupuk, kecap manis, sambal)',
        ],
        'steps': [
          'Rebus beras, santan, air, garam, dan daun salam hingga menjadi bubur.',
          'Tumis bumbu halus, masukkan suwiran ayam.',
          'Sajikan bubur dengan tambahan suwiran ayam, pelengkap, dan kuah kaldu.',
        ],
      },
      {
        'image': 'assets/images/nasduk.jpg',
        'title': 'Nasi Uduk',
        'rating': 4,
        'ingredients': [
          'Beras',
          'Santan',
          'Daun pandan',
          'Sereh',
          'Lengkuas',
          'Bumbu halus (bawang merah, bawang putih, kemiri, ketumbar)',
          'Garam',
        ],
        'steps': [
          'Tumis bumbu halus hingga harum, masukkan daun pandan, sereh, dan lengkuas.',
          'Masukkan beras yang sudah dicuci bersih, aduk rata.',
          'Tambahkan santan dan garam, masak hingga nasi matang dan santan meresap.',
        ],
      },
    ],
    'Lunch': [
      {
        'image': 'assets/images/nasdang.jpg',
        'title': 'Nasi Padang',
        'rating': 5,
        'ingredients': [
          'Nasi putih',
          'Lauk pauk (rendang, ayam goreng, ikan, sayur nangka, sambal)',
        ],
        'steps': [
          'Masak nasi putih hingga matang.',
          'Siapkan berbagai macam lauk pauk khas Padang.',
          'Sajikan nasi putih bersama lauk pauk di atas piring.',
        ],
      },
      {
        'image': 'assets/images/soto ayam.jpg',
        'title': 'Soto Ayam',
        'rating': 5,
        'ingredients': [
          'Ayam potong',
          'Air',
          'Bumbu halus (bawang merah, bawang putih, kunyit, ketumbar)',
          'Jahe',
          'Lengkuas',
          'Serai',
          'Daun jeruk',
          'Soun',
          'Tauge',
          'Telur rebus',
          'Bawang goreng, seledri, jeruk nipis',
        ],
        'steps': [
          'Rebus ayam hingga matang, suwir dagingnya.',
          'Tumis bumbu halus hingga harum, masukkan jahe, lengkuas, serai, dan daun jeruk.',
          'Masukkan air, rebus hingga mendidih.',
          'Masukkan suwiran ayam, soun, dan tauge. Masak hingga matang.',
          'Sajikan dengan taburan bawang goreng, seledri, dan perasan jeruk nipis.',
        ],
      },
    ],
    'Brunch': [
      {
        'image': 'assets/images/omelet.jpg',
        'title': 'Omelet',
        'rating': 5,
        'ingredients': [
          'Telur',
          'Bawang bombay',
          'Wortel (opsional)',
          'Garam',
          'Merica',
        ],
        'steps': [
          'Kocok telur hingga berbusa.',
          'Tumis bawang bombay dan wortel hingga layu.',
          'Masukkan tumisan sayuran ke dalam kocokan telur. Bumbui dengan garam dan merica.',
          'Goreng hingga matang.',
        ],
      },
      {
        'image': 'assets/images/pancake.jpg',
        'title': 'Pancake',
        'rating': 5,
        'ingredients': [
          'Tepung terigu',
          'Telur',
          'Susu',
          'Gula',
          'Baking powder',
          'Margarin (untuk menggoreng)',
        ],
        'steps': [
          'Campur semua bahan hingga rata.',
          'Panaskan teflon, olesi dengan margarin.',
          'Tuang adonan sedikit demi sedikit, masak hingga matang kecoklatan.',
        ],
      },
    ],
    'Dinner': [
      {
        'image': 'assets/images/nasi campur.jpg',
        'title': 'Nasi Campur',
        'rating': 5,
        'ingredients': [
          'Nasi putih',
          'Lauk pauk (ayam goreng, telur balado, sayur asem, sambal, kerupuk)',
        ],
        'steps': [
          'Masak nasi putih hingga matang.',
          'Siapkan berbagai macam lauk pauk.',
          'Sajikan nasi putih bersama lauk pauk di atas piring.',
        ],
      },
      {
        'image': 'assets/images/gulai.jpg',
        'title': 'Gulai',
        'rating': 5,
        'ingredients': [
          'Daging sapi atau ayam',
          'Santan',
          'Bumbu halus (bawang merah, bawang putih, kunyit, kemiri, ketumbar)',
          'Jahe',
          'Lengkuas',
          'Serai',
          'Daun kunyit',
          'Santan kental',
          'Garam',
        ],
        'steps': [
          'Tumis bumbu halus hingga harum, masukkan jahe, lengkuas, serai, dan daun kunyit.',
          'Masukkan daging, masak hingga berubah warna.',
          'Tuang santan encer, masak hingga mendidih.',
          'Masukkan santan kental, masak hingga kuah mengental dan bumbu meresap.',
        ],
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
              (Route<dynamic> route) => route.isFirst,
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Our Recipes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Categories (Tabs)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryTab(
                    text: 'All',
                    isSelected: currentCategory == 'All',
                    onTap: () => _changeCategory('All'),
                  ),
                  SizedBox(width: 18),
                  CategoryTab(
                    text: 'Breakfast',
                    isSelected: currentCategory == 'Breakfast',
                    onTap: () => _changeCategory('Breakfast'),
                  ),
                  SizedBox(width: 18),
                  CategoryTab(
                    text: 'Lunch',
                    isSelected: currentCategory == 'Lunch',
                    onTap: () => _changeCategory('Lunch'),
                  ),
                  SizedBox(width: 18),
                  CategoryTab(
                    text: 'Brunch',
                    isSelected: currentCategory == 'Brunch',
                    onTap: () => _changeCategory('Brunch'),
                  ),
                  SizedBox(width: 18),
                  CategoryTab(
                    text: 'Dinner',
                    isSelected: currentCategory == 'Dinner',
                    onTap: () => _changeCategory('Dinner'),
                  ),
                  SizedBox(width: 18),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Recipe List - Scrollable Vertically
            Expanded(
              child: ListView.builder(
                itemCount: recipes[currentCategory]!.length,
                itemBuilder: (context, index) {
                  var recipe = recipes[currentCategory]![index];
                  return RecipeCard(
                    imagePath: recipe['image'],
                    title: recipe['title'],
                    rating: recipe['rating'],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetail(
                            imagePath: recipe['image'],
                            title: recipe['title'],
                            rating: recipe['rating'],
                            ingredients: recipe['ingredients'],
                            steps: recipe['steps'],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to change the category
  void _changeCategory(String category) {
    setState(() {
      currentCategory = category;
    });
  }
}
