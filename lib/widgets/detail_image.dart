import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;

  const DetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2, // Takes two-thirds of the screen
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
