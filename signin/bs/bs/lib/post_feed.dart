import 'package:bs/reading_page.dart';
import 'package:flutter/material.dart';

class PostFeed extends StatelessWidget {
  const PostFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${item.author} · ${item.postedOn}",
                            style: Theme.of(context).textTheme.bodySmall),
                        const SizedBox(height: 8),
                       Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.bookmark_border_rounded,
                            Icons.share,
                            Icons.more_vert
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;
  final String postedOn;

  Article(
      {
        required this.title,
        required this.imageUrl,
        required this.author,
        required this.postedOn
      }
    );
}

final List<Article> _articles = [
  Article(
    title: "How to solve the re-arrange question in TOPIK II Reading",
    author: "Usman",
    imageUrl: "https://picsum.photos/200/300?random=1",
    postedOn: "Yesterday",
  ),
  Article(
      title: "Ace the Listening Section in TOPIK: Tips and Strategies",
      imageUrl: "https://picsum.photos/200/300?random=2",
      author: "Google User",
      postedOn: "4 hours ago"),
  Article(
    title: "Mastering Vocabulary for TOPIK Writing: A Comprehensive Guide",
    author: "Passenger",
    imageUrl: "https://picsum.photos/200/300?random=3",
    postedOn: "2 days ago",
  ),
  Article(
    title: "Cracking the Grammar Section of TOPIK: Tips and Tricks",
    author: "Mac Anthony",
    imageUrl: "https://picsum.photos/200/300?random=4",
    postedOn: "22 hours ago",
  ),
  Article(
    title: "Maximizing Your Score in TOPIK Reading Comprehension",
    author: "Tchalla",
    imageUrl: "https://picsum.photos/200/300?random=5",
    postedOn: "2 hours ago",
  ),
  Article(
    title: "Preparing for TOPIK Speaking: Tips for Effective Communication",
    author: "Iphone User",
    imageUrl: "https://picsum.photos/200/300?random=6",
    postedOn: "10 days ago",
  ),
  Article(
    title: "Effective Time Management in TOPIK Exam: Tips and Techniques",
    author: "Lilian",
    imageUrl: "https://picsum.photos/200/300?random=7",
    postedOn: "10 hours ago",
  ),
];
