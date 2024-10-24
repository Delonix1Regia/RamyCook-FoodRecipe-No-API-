import 'package:flutter/material.dart';
import 'package:slicing_ui/main_menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String errorMessage = '';

  void _login() {
    // Username dan password yang valid (contoh sederhana)
    String validUsername = 'user';
    String validPassword = '123';

    String enteredUsername = _usernameController.text;
    String enteredPassword = _passwordController.text;

    // Validasi input
    if (enteredUsername.isEmpty || enteredPassword.isEmpty) {
      setState(() {
        errorMessage = 'Username and password are required';
      });
      return;
    }

    if (enteredUsername == validUsername && enteredPassword == validPassword) {
      // Navigasi ke MainMenu jika berhasil
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainMenu()),
      );
    } else {
      // Jika gagal, tampilkan pesan error
      setState(() {
        errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Definisikan ukuran teks yang konsisten
    const double labelTextSize = 14.0;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'RamyCook',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Let's Cook for Your Long Life!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Label Username
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: labelTextSize,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: 230,
                    child: TextField(
                      controller: _usernameController,
                      style: TextStyle(
                        fontSize: labelTextSize,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        hintText: 'Enter your username',
                        hintStyle: TextStyle(
                          fontSize: labelTextSize,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Label Password
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: labelTextSize,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: 230,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: labelTextSize,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          fontSize: labelTextSize,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 18),
                  // Menampilkan pesan error jika ada
                  if (errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ElevatedButton(
                    onPressed: _login, // Memanggil fungsi _login untuk validasi
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      minimumSize: Size(200, 50),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: labelTextSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
