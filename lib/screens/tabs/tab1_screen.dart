import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  int _score = 1485;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Memory'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: Column(
                children: [
                  const Text('Memory & Cognitive Index', style: TextStyle(color: Colors.white70, fontSize: 13)),
                  const SizedBox(height: 6),
                  Text('$_score pts', style: const TextStyle(color: AppTheme.primaryColor, fontSize: 34, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  const Text('Top 8% among peers in your age group', style: TextStyle(color: Colors.white60, fontSize: 12)),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () => setState(() => _score += 15),
                    icon: const Icon(Icons.psychology, color: Colors.black),
                    label: const Text('Take Memory Assessment'),
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Training Modules', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildModule('Visual Matrix', 'Recalling grid tile positions', 'Level 14', Icons.grid_on),
            _buildModule('Digit Span', 'Reverse digit span sequence', 'Level 9', Icons.numbers),
            _buildModule('Spatial Maze Navigation', 'Mental 3D rotation & orientation', 'Level 11', Icons.explore),
            _buildModule('Associative Pairs', 'Memorizing word-image pairs', 'Level 16', Icons.connect_without_contact),
          ],
        ),
      ),
    );
  }

  Widget _buildModule(String title, String desc, String lvl, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
            child: Icon(icon, color: AppTheme.primaryColor, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                Text(desc, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          Text(lvl, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 13)),
        ],
      ),
    );
  }
}
