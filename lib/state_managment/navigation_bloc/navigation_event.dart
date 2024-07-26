part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}

class PageTapped extends NavigationEvent {
  final int index;

  PageTapped(this.index);
}
