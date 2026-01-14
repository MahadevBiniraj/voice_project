import 'package:flutter/material.dart';
import 'package:voice_project/views/Profile_Screen/widgets/widgetbuildprofilecard.dart';
import 'package:voice_project/views/Profile_Screen/widgets/widgetitemcard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Time at top right
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '9:41',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Profile Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // User Profile Card
            buildProfileCard(),

            SizedBox(height: 40),

            // Menu Items List
            buildMenuItemsList()
          ],
        ),
      ),
    );
  }
}
