import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const RewardCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 120,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.teal),
            SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
