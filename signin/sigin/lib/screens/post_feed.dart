import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sigin/screens/firebase.dart';
import 'package:sigin/screens/post_item.dart';

class PostFeed extends StatelessWidget {
  const PostFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseService.getPosts(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: (snapshot.data! as QuerySnapshot).docs.length,
          itemBuilder: (context, index) {
            return PostItem(
              title: (snapshot.data! as QuerySnapshot).docs[index]['title'],
              body: (snapshot.data! as QuerySnapshot).docs[index]['body'], key: null,
            );
          },
        );
      },
    );
  }
}
