import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {"title": "ポートフォリオアプリ", "description": "Flutterを使ったポートフォリオアプリ"},
      {"title": "ToDoアプリ", "description": "タスク管理アプリ"},
      {"title": "チャットアプリ", "description": "Firebaseを使ったリアルタイムチャット"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "プロジェクト",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...projects.map((project) => Card(
              child: ListTile(
                title: Text(project["title"]!),
                subtitle: Text(project["description"]!),
              ),
            )),
      ],
    );
  }
}
