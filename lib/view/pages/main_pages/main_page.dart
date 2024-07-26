import 'package:doctors_task/view/pages/main_pages/home_page.dart';
import 'package:doctors_task/state_managment/navigation_bloc/navigation_bloc.dart';
import 'package:doctors_task/view/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            int currentIndex = 0;
            if (state is PageLoaded) {
              currentIndex = state.index;
            }
            return BottomNavBar(
              width: width,
              height: height,
              items: const [
                Icons.home_outlined,
                Icons.account_balance_wallet_outlined,
                Icons.insert_chart_outlined_rounded,
                Icons.account_circle_outlined,
              ],
              currentIndex: currentIndex,
              onItemSelected: (value) {
                BlocProvider.of<NavigationBloc>(context).add(PageTapped(value));
              },
            );
          },
        ),
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            int currentIndex = 0;
            if (state is PageLoaded) {
              currentIndex = state.index;
            }
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                final offsetAnimation = Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation);
                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOut,
              child: [
                HomePage(),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.amber,
                  ),
                ),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ),
              ][currentIndex],
            );
          },
        ),
      ),
    );
  }
}
