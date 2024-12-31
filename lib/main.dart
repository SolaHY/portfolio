import 'package:flutter/material.dart';
import '../widgets/profile_section.dart';
import '../widgets/skill_section.dart';
import '../widgets/project_section.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // プロフィールセクション
            ProfileSection(),
            SizedBox(height: 16),
            // スキルセクション
            SkillSection(),
            SizedBox(height: 16),
            // プロジェクトセクション
            ProjectSection(),
          ],
        ),
      ),
    );
  }
}
