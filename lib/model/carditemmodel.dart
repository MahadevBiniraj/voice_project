import 'package:flutter/material.dart';

class CardItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isEmergency;

  CardItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.isEmergency = false,
  });
}
