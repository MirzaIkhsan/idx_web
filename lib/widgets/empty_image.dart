import 'package:flutter/material.dart';

class EmptyImage extends StatelessWidget {
  const EmptyImage({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: const Icon(Icons.image, size: 100, color: Colors.grey),
    );
  }
}
