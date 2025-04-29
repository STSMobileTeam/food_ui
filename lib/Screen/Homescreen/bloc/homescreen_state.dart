part of 'homescreen_bloc.dart';

@immutable
sealed class HomescreenState {}

final class HomescreenInitial extends HomescreenState {}

final class ImageChangedState extends HomescreenState {}