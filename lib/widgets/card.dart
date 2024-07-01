import 'package:flutter/material.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    super.key,
    required this.cardName,
    required this.cardColor,
    required this.size,
  });

  final String cardName;
  final Color cardColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Card(
          color: cardColor,
      child: Column(
        children: [
           Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Text(
                        cardName,
                        style: TextStyle(fontSize: constraints.maxHeight / 5),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
