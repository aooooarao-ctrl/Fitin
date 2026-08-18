import 'package:flutter/material.dart';

class LARCCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  
  const LARCCard({Key? key, required this.title, this.subtitle = '', this.onTap}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: Theme.of(context).textTheme.titleLarge), if (subtitle.isNotEmpty) Text(subtitle)]),
        ),
      ),
    );
  }
}
