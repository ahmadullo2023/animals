import 'package:flutter/material.dart';


class AnimalsView extends StatefulWidget {
  const AnimalsView({super.key,
    required this.article,
  });

  final article;

  @override
  State<AnimalsView> createState() => _AnimalsViewState();
}

class _AnimalsViewState extends State<AnimalsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (BuildContext) =>
        //         NewsCard(
        //           article: widget.article,
        //         ),
        //   ),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.article["nameOfYoung"],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const Divider(color: Colors.white10),
          ],
        ),
      ),
    );
  }
}
