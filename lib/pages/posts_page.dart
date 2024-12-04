import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.surface,
      appBar: AppBar(
        title: const Text("We Connect"),
        foregroundColor: theme.primary,
      ),
    );
  }
}