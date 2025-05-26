import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  final List<Map<String, String>> _newsArticles = const [
    {
      'title': 'New Music Trends in 2025',
      'date': 'May 20, 2025',
      'content':
          'Explore the latest music trends shaping the industry in 2025, including AI-driven production and immersive audio experiences.'
    },
    {
      'title': 'How to Promote Your Music Online',
      'date': 'May 18, 2025',
      'content':
          'Learn effective online marketing strategies for independent musicians to build a fanbase and grow your brand.'
    },
    {
      'title': 'Top 10 Mixing Tips for Beginners',
      'date': 'May 15, 2025',
      'content':
          'Boost your mix quality with these essential tips tailored for novice producers and engineers.'
    },
  ];

  void _showArticleDetails(BuildContext context, Map<String, String> article) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(article['title'] ?? 'Article'),
        content: Text(article['content'] ?? ''),
        actions: [
          TextButton(onPressed: () => Navigator.of(ctx).pop(), child: const Text('Close')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _newsArticles.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final article = _newsArticles[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text(article['title'] ?? '',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text(article['date'] ?? '',
                  style: const TextStyle(color: Colors.grey, fontSize: 12)),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
              onTap: () => _showArticleDetails(context, article),
            ),
          );
        },
      ),
    );
  }
}
