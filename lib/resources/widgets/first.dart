import 'package:flutter/material.dart';
import 'package:promilo/resources/widgets/rating_widget.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.bookmark_border_outlined),
          SizedBox(
            width: 10,
          ),
          Text('1034'),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.favorite_border_rounded),
          SizedBox(
            width: 10,
          ),
          Text('1034'),
          SizedBox(
            width: 10,
          ),
          RatingWidget(),
          SizedBox(
            width: 10,
          ),
          Text('3.2'),
        ],
      ),
    );
  }
}
