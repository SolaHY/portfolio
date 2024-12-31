import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "こんにちは！",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "私はFlutterエンジニアです。以下は私のスキルとプロジェクトの一部です。",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
