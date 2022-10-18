import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:now_in_dart_flutter/core/presentation/assets_path.dart';
import 'package:now_in_dart_flutter/core/presentation/lazy_indexed_stack.dart';
import 'package:now_in_dart_flutter/features/detail/dart_detail/presentation/view/dart_changelog_page.dart';
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
    const pages = <Widget>[DartChangelogPage(), FlutterDetailPage()];

    final selectedTabIndex = context.select<HomeCubit, int>(
      (HomeCubit cubit) => cubit.state.index,
    );

    return OrientationBuilder(
      builder: (_, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            body: LazyIndexedStack(
              index: selectedTabIndex,
              children: pages,
            ),
            bottomNavigationBar: NavigationBar(
              destinations: _destinations,
              selectedIndex: selectedTabIndex,
              onDestinationSelected: context.read<HomeCubit>().setTab,
            ),
          );
        }
        return Scaffold(
          body: Row(
            children: [
              NavigationRail(
                destinations: _railDestinations,
                selectedIndex: selectedTabIndex,
                groupAlignment: 0,
                onDestinationSelected: context.read<HomeCubit>().setTab,
              ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: LazyIndexedStack(
                  index: selectedTabIndex,
                  children: pages,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static final _destinations = <NavigationDestination>[
    NavigationDestination(
      icon: SvgPicture.asset(
        AssetsPath.dartIcon,
        width: 24,
        height: 24,
      ),
      label: 'Dart',
    ),
    NavigationDestination(
      icon: SvgPicture.asset(
        AssetsPath.flutterIcon,
        width: 24,
        height: 24,
      ),
      label: 'Flutter',
    ),
  ];

  static final _railDestinations = <NavigationRailDestination>[
    NavigationRailDestination(
      icon: SvgPicture.asset(
        AssetsPath.dartIcon,
        width: 24,
        height: 24,
      ),
      label: const Text('Dart'),
    ),
    NavigationRailDestination(
      icon: SvgPicture.asset(
        AssetsPath.flutterIcon,
        width: 24,
        height: 24,
      ),
      label: const Text('Flutter'),
    ),
  ];
}
