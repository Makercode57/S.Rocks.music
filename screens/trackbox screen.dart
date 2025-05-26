import 'package:flutter/material.dart';

class TrackBoxScreen extends StatefulWidget {
  const TrackBoxScreen({super.key});

  @override
  State<TrackBoxScreen> createState() => _TrackBoxScreenState();
}

class _TrackBoxScreenState extends State<TrackBoxScreen> {
  final List<String> _tracks = [
    'Ambient Chillout',
    'Upbeat Electro',
    'Smooth Jazz Vibes',
    'Classic Rock Anthem',
  ];

  int? _playingIndex;

  void _togglePlayPause(int index) {
    setState(() {
      if (_playingIndex == index) {
        _playingIndex = null; 
      } else {
        _playingIndex = index; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _tracks.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final track = _tracks[index];
          final isPlaying = _playingIndex == index;

          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                  color: Colors.deepPurpleAccent, size: 32),
              title: Text(track,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              trailing: IconButton(
                icon: Icon(
                  isPlaying ? Icons.stop : Icons.play_arrow,
                  color: Colors.white70,
                ),
                onPressed: () => _togglePlayPause(index),
              ),
              onTap: () => _togglePlayPause(index),
            ),
          );
        },
      ),
    );
  }
}
