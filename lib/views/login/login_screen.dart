import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: const Color(0xFF4894FE),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20), // Sesuaikan padding
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Elemen ditengah secara vertikal
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Elemen ditengah secara horizontal
                children: [
                  Image.asset(
                    'assets/images/logo-jti.jpg',
                    width: 202,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'PORTAL SIMAS',
                    style: TextStyle(
                      color: Color(0xFFF0F3F8),
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 56),
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
