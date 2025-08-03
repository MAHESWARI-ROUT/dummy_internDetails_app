import 'package:flutter/material.dart';

class LeaderboardTile extends StatelessWidget {
  final String name;
  final String donations;
  final int rank;

  const LeaderboardTile({required this.name, required this.donations, required this.rank});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(rank.toString())),
      title: Text(name),
      trailing: Text(donations, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
