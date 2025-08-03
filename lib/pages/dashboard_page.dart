import 'package:flutter/material.dart';
import '../widgets/reward_card.dart';

class DashboardPage extends StatelessWidget {
  final String internName = "Aarav Mehta";
  final String referralCode = "aarav2025";
  final String totalDonations = "₹5,000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text(internName, style: TextStyle(fontSize: 24))),
            ListTile(title: Text("Dashboard"), onTap: () => Navigator.pushReplacementNamed(context, '/dashboard')),
            ListTile(title: Text("Leaderboard"), onTap: () => Navigator.pushNamed(context, '/leaderboard')),
            ListTile(title: Text("Announcements"), onTap: () => Navigator.pushNamed(context, '/announcements')),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, $internName", style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text("Referral Code: $referralCode", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text("Total Donations: $totalDonations", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text("Rewards", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  RewardCard(title: "T-Shirt", icon: Icons.emoji_events),
                  SizedBox(height: 10,),
                  RewardCard(title: "Certificate", icon: Icons.card_membership),
                  SizedBox(height: 10,),
                  RewardCard(title: "Shoutout", icon: Icons.celebration),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
