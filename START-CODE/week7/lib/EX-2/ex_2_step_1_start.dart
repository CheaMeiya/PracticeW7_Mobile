import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            Container(
              // YOUR CODE
              child: Column(
                children: [
                  FavoriteCard(
                    title: "title",
                    description: "description",
                    isFavorite: false,
                  ),
                  FavoriteCard(
                    title: "title",
                    description: "description",
                    isFavorite: true,
                  ),
                  FavoriteCard(
                    title: "title",
                    description: "description",
                    isFavorite: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  final bool isFavorite;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
    required this.isFavorite,a
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  late bool favorite;

  @override
  void initState() {
    super.initState();
    favorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(color: Colors.blue),
                ),
                Text(widget.description),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                favorite = !favorite;
              });
            },
            icon: Icon(
              favorite ? Icons.favorite : Icons.favorite_border,
              color: favorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
