import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http; // Untuk HTTP request
import 'dart:convert'; // Untuk jsonEncode dan jsonDecode

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  // Future<void> _handleLogin() async {
  //   if (_formKey.currentState!.validate()) {
  //     // Validasi berhasil
  //     final username = _usernameController.text;
  //     final password = _passwordController.text;

  //     // Simulasikan login (ganti dengan API login Anda)
  //     if (username == "test" && password == "1234") {
  //       final prefs = await SharedPreferences.getInstance();
  //       await prefs.setString(
  //           'auth_token', 'fake_token_1234'); // Simpan token login
  //       await prefs.setString(
  //           'role_kode', 'DSN'); // Simpan role pengguna (contoh)

  //       // Arahkan ke halaman utama
  //       Navigator.pushReplacementNamed(context, '/home');
  //     } else {
  //       // Jika login gagal
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: const Text('Login Failed'),
  //           content: const Text('Invalid username or password.'),
  //           actions: [
  //             TextButton(
  //               onPressed: () => Navigator.pop(context),
  //               child: const Text('OK'),
  //             ),
  //           ],
  //         ),
  //       );
  //     }
  //   }
  // }

  Future<void> _handleLogin() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    // Log input pengguna
    print('Attempting login with:');
    print('Username/Email: $username');
    print(
        'Password: $password'); // Jangan gunakan ini di produksi (hanya untuk debugging)

    final response = await http.post(
      Uri.parse('http://example.com/api/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );

    // Log status respons API
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildField(
            label: 'Username/Email',
            hintText: 'Enter your username or email',
            obscureText: false,
            controller: _usernameController,
          ),
          const SizedBox(height: 20),
          _buildField(
            label: 'Password',
            hintText: 'Enter your password',
            obscureText: _obscurePassword,
            controller: _passwordController,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility : Icons.visibility_off,
                color: const Color(0xFF809CFF),
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: GestureDetector(
                onTap: () {
                  // Handle forgot password
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Forgot password clicked')),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFFF0F3F8),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                print('Login button clicked'); // Log event tombol login
                if (_formKey.currentState!.validate()) {
                  print('Form validated successfully'); // Log validasi form
                  _handleLogin(); // Panggil fungsi login
                } else {
                  print('Form validation failed'); // Log jika validasi gagal
                }
              },
              // onPressed: _handleLogin, // Aksi login
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Color(0xFF2260FF),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildField({
    required String label,
    required String hintText,
    required bool obscureText,
    required TextEditingController controller,
    Widget? suffixIcon,
  }) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 20), // Padding kiri dan kanan
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Label tetap di kiri
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: const Color(0xFFECF1FF),
              borderRadius: BorderRadius.circular(13),
            ),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              style: const TextStyle(
                color: Color(0xFF809CFF),
                fontSize: 16,
                fontFamily: 'League Spartan',
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Color(0xFF809CFF),
                  fontSize: 16,
                  fontFamily: 'League Spartan',
                ),
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 19),
                suffixIcon: suffixIcon,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your $label';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
