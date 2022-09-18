import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:now_in_dart_flutter/features/detail/dart_detail/presentation/view/dart_detail_page.dart';
import 'package:now_in_dart_flutter/features/detail/flutter_detail/presentation/view/flutter_detail_page.dart';
import 'package:now_in_dart_flutter/features/home/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    const pages = <Widget>[DartDetailPage(), FlutterDetailPage()];
    final selectedTabIndex = context.select<HomeCubit, int>(
      (HomeCubit cubit) => cubit.state.index,
    );
    return Scaffold(
      body: pages.elementAt(selectedTabIndex),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Dart',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Flutter',
          ),
        ],
        selectedIndex: selectedTabIndex,
        onDestinationSelected: context.read<HomeCubit>().setTab,
      ),
    );
  }
}
