import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatefulWidget {
  const Tab3Screen({super.key});

  @override
  State<Tab3Screen> createState() => _Tab3ScreenState();
}

class _Tab3ScreenState extends State<Tab3Screen> {
  int _reactionMs = 215;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WinSynapse • Agility'),
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
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: Column(
                children: [
                  const Text('Скорость реакции мозга', style: TextStyle(color: Colors.white70, fontSize: 13)),
                  const SizedBox(height: 6),
                  Text('$_reactionMs ms', style: const TextStyle(color: AppTheme.primaryColor, fontSize: 34, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  const Text('Средняя норма: 260 ms • Ваш статус: Молниеносный', style: TextStyle(color: Colors.white60, fontSize: 12)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => setState(() => _reactionMs = (_reactionMs > 180 ? _reactionMs - 4 : 180)),
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.black),
                    child: const Text('Тест визуального отклика'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Скоростные испытания', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildAgilityCard('Быстрый счет 60 сек', 'Решите как можно больше примеров', '38 решено', Icons.calculate_outlined),
            _buildAgilityCard('Сортировка категорий', 'Мгновенная классификация образов', '94% точность', Icons.category_outlined),
            _buildAgilityCard('Рефлекс совпадений', 'Тап при совпадении двух символов', '195 ms рекорд', Icons.touch_app_outlined),
          ],
        ),
      ),
    );
  }

  Widget _buildAgilityCard(String title, String desc, String res, IconData icon) {
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
          Text(res, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 13)),
        ],
      ),
    );
  }
}
