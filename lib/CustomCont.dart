import 'package:flutter/material.dart';

class CustomCont extends StatelessWidget {
  const CustomCont({
    required this.title,
    required this.paragraph,
    required this.imageLink,
  });
  final String paragraph;
  final String title;
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                Text(
                  paragraph,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Column(children: [Image.network(imageLink, width: 130)]),
        ],
      ),
    );
  }
}
