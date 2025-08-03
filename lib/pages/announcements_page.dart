import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> announcements = [
    "🎉 Fundraising Week starts Monday!",
    "📢 Don’t forget to share your referral code!",
    "🏆 Top 3 interns will win gift hampers.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Announcements")),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.announcement_rounded),
            title: Text(announcements[index]),
          );
        },
      ),
    );
  }
}
