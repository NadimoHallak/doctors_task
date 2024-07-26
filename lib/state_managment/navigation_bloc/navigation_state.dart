part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}

final class NavigationInitial extends NavigationState {}


class PageLoading extends NavigationState {}

class PageLoaded extends NavigationState {
  final int index;

  PageLoaded(this.index);
}