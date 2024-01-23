import 'package:e_books/features/Splach/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EBook());
}

class EBook extends StatelessWidget {
  const EBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplachView(),
    );
  }
}
