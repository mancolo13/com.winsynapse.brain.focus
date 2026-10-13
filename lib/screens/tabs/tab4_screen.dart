import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final pillars = [
      {'name': 'Память', 'pct': 0.88, 'pts': '1,485'},
      {'name': 'Внимание', 'pct': 0.94, 'pts': '1,560'},
      {'name': 'Скорость', 'pct': 0.91, 'pts': '1,510'},
      {'name': 'Логика', 'pct': 0.85, 'pts': '1,420'},
      {'name': 'Гибкость', 'pct': 0.89, 'pts': '1,490'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WinSynapse • Analytics'),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Общий когнитивный профиль', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  const SizedBox(height: 6),
                  const Text('1,493 БАЛЛА • ЭЛИТА', style: TextStyle(color: AppTheme.primaryColor, fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  ...pillars.map((p) => Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(p['name'] as String, style: const TextStyle(color: Colors.white, fontSize: 13)),
                            Text(p['pts'] as String, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
                          ],
                        ),
                        const SizedBox(height: 6),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: p['pct'] as double,
                            minHeight: 6,
                            backgroundColor: Colors.white10,
                            valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(16)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Рекомендация нейропсихолога', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(height: 6),
                  Text('Ваша визуальная память опережает вербальную. Сфокусируйтесь на упражнении "Ассоциативные пары" для гармоничного баланса полушарий.', style: TextStyle(color: Colors.white70, fontSize: 13, height: 1.4)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
