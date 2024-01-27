import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/features/search/presentaion/views/widgets/custom_text_field.dart';
import 'package:e_books/features/search/presentaion/views/widgets/result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Search Page'),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
          child: Column(
            children: [
              CustomTextField(
                productName: 'Search',
                onChange: (data) {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  right: 220,
                ),
                child: Text(
                  'Search Result',
                  style: Styles.textStyle20,
                ),
              ),
              const Expanded(
                child: ResultSearchListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
