import 'package:e_books/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFailureErrorMessage extends StatelessWidget {
  const CustomFailureErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
