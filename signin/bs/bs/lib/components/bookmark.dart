import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isBookmarked = !_isBookmarked;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              _isBookmarked
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
