import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voice_project/views/Home_Screen/Widgets/infocard.dart';
import 'package:voice_project/views/Home_Screen/Widgets/voicecard.dart';

import '../../model/carditemmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardItem> cardItems = [
    CardItem(
      title: 'Medication Reminder',
      subtitle: 'Next Dose: 8:00 AM',
      icon: Icons.medication,
    ),
    CardItem(
      title: 'Call Caregiver',
      subtitle: 'Quick Contact',
      icon: Icons.call,
    ),
    CardItem(
      title: 'Share Location',
      subtitle: 'Send live location',
      icon: Icons.location_on,
    ),
    CardItem(
      title: 'Emergency SOS',
      subtitle: 'Get immediate help',
      icon: Icons.warning_rounded,
      isEmergency: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7F9FC),
        appBar: AppBar(
          backgroundColor: const Color(0xFF2F80ED),
          elevation: 0,
          title: const Text(
            'Hello, Stay Safe 👋',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: VoiceCard(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cardItems.length,
              itemBuilder: (context, index) {
                final item = cardItems[index];
                return InfoCard(
                  title: item.title,
                  subtitle: item.subtitle,
                  icon: item.icon,
                );
              },
            ),
          ),
        ]));
  }
}
