import 'package:flutter/material.dart';
import 'profile_form.dart';

class ProfileUpdate extends StatelessWidget {
  const ProfileUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileForm(),
          ],
        ),
      ),
    );
  }
}
