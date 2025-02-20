import '../views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/base/presentation/views/city_list_view.dart';
import 'package:bnka_test/base/presentation/bloc/tab/bloc/tab_bloc.dart';

class BaseScreen extends StatelessWidget {
  final List<Widget> _screens = const [
    HomeView(),
    CityListView(),
  ];

  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        return Scaffold(
          body: _screens[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (index) =>
                context.read<TabBloc>().add(TabEvent.changeTab(index)),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_city),
                label: 'Cities',
              ),
            ],
          ),
        );
      },
    );
  }
}
