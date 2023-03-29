import 'package:flutter/material.dart';
//import 'package:sigin/screens/create_post.dart';
import 'package:sigin/screens/post_feed.dart';

import 'create_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Feed'),
      ),
      body: const PostFeed(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
           context,
            MaterialPageRoute(builder: (context) => const CreatePostForm()),
          );
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}