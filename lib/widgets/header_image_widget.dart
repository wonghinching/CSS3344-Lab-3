import 'package:flutter/material.dart';

class HeaderImageWidget extends StatelessWidget {
  const HeaderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image.png',
      height: 240,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}