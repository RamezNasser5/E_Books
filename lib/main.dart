import 'package:e_books/consts.dart';
import 'package:e_books/core/utils/app_router.dart';
import 'package:e_books/core/utils/services_located.dart';
import 'package:e_books/features/home/data/repos/home_repo_impl.dart';
import 'package:e_books/features/home/presentaion/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:e_books/features/home/presentaion/manager/newest_book_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServireLocator();
  runApp(const EBook());
}

class EBook extends StatelessWidget {
  const EBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
            getit.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getit.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
