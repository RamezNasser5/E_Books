import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_books/core/utils/app_router.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kBooksDetailsView, extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
              // placeholder: (context, url) =>
              //     const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
