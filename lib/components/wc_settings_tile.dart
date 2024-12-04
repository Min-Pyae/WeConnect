import 'package:flutter/material.dart';

class WcSettingsTile extends StatelessWidget {
  final String title;
  final Widget action;
  const WcSettingsTile({
    super.key,
    required this.title,
    required this.action
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, top: 10, right: 25),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(

        // Title
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),

        // Trailing Action
        trailing: action
      ),
    );
  }
}
