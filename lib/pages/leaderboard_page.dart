import 'package:dummy_app/widgets/leaderboard_title.dart';
import 'package:dummy_app/widgets/mock_data.dart';
import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = mockLeaderboardUsers;

    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard")),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return LeaderboardTile(
            name: users[index].name,
            donations: users[index].donations,
            rank: index + 1,
          );
        },
      ),
    );
  }
}
