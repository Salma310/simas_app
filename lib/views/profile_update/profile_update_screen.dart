import 'package:flutter/material.dart';
import 'profile_form.dart';

class ProfileUpdate extends StatelessWidget {
  final Map<String, dynamic> userData;

  const ProfileUpdate({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileForm(userData: userData),
          ],
        ),
      ),
    );
  }
}
