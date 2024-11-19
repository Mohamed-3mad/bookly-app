import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimiation,
  });

  final Animation<Offset> slidingAnimiation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimiation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimiation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          );
        });
  }
}
