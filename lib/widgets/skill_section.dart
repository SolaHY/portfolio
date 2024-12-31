import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = ["Flutter", "Dart", "Firebase", "UI/UX Design"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "スキル",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills
              .map((skill) => Chip(
                    label: Text(skill),
                    backgroundColor: Colors.blue[100],
                  ))
              .toList(),
        ),
      ],
    );
  }
}
