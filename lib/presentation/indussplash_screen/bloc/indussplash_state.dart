// ignore_for_file: must_be_immutable

part of 'indussplash_bloc.dart';

/// Represents the state of Indussplash in the application.
class IndussplashState extends Equatable {
  IndussplashState({this.indussplashModelObj});

  IndussplashModel? indussplashModelObj;

  @override
  List<Object?> get props => [
        indussplashModelObj,
      ];
  IndussplashState copyWith({IndussplashModel? indussplashModelObj}) {
    return IndussplashState(
      indussplashModelObj: indussplashModelObj ?? this.indussplashModelObj,
    );
  }
}
