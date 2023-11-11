import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String username;
  final String email;
  final String password;

  DetailsScreen({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username: $username'),
            Text('Email: $email'),
            Text('Password: $password'),
          ],
        ),
      ),
    );
  }
}
