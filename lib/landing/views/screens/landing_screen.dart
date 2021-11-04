import 'package:flutter/material.dart';

import 'package:app_demo/landing/models/models.dart';

final classList = [
  Classroom(className: 'Flutter', description: 'A Flutter Class'),
  Classroom(className: 'Python', description: 'A Python Class'),
  Classroom(className: 'General', description: 'A General Class'),
];

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  static const path = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 300,
      mainAxisSpacing: 16,
      children: classList.map(
        (classroom) => ClassroomButton(
          className: classroom.className,
          classDescription: classroom.description,
        ),
      ).toList(),
    );
  }
}

class ClassroomButton extends StatelessWidget {
  const ClassroomButton({
    Key? key,
    required this.className,
    required this.classDescription,
  }) : super(key: key);

  final String className;
  final String classDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            Text(className),
            Text(classDescription),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Demo'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
