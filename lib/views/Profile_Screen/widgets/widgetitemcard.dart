import 'package:flutter/material.dart';
import 'package:voice_project/model/itemmodel.dart';

Widget buildMenuItemsList() {
  return Expanded(
    child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: const [
        MenuItem(
          icon: Icons.person_outline,
          title: 'Personal Information',
          subtitle: 'Edit your profile details',
        ),
        SizedBox(height: 20),
        MenuItem(
          icon: Icons.people_outline,
          title: 'Caregiver Contact',
          subtitle: 'Emergency contacts',
        ),
        SizedBox(height: 20),
        MenuItem(
          icon: Icons.notifications_outlined,
          title: 'Notification Settings',
          subtitle: 'Alert preferences',
        ),
        SizedBox(height: 20),
        MenuItem(
          icon: Icons.settings_outlined,
          title: 'App Settings',
          subtitle: 'App configuration',
        ),
      ],
    ),
  );
}
