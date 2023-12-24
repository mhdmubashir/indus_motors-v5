// ignore_for_file: must_be_immutable

part of 'wagnorbsfour_bloc.dart';

/// Represents the state of Wagnorbsfour in the application.
class WagnorbsfourState extends Equatable {
  WagnorbsfourState({this.wagnorbsfourModelObj});

  WagnorbsfourModel? wagnorbsfourModelObj;

  @override
  List<Object?> get props => [
        wagnorbsfourModelObj,
      ];
  WagnorbsfourState copyWith({WagnorbsfourModel? wagnorbsfourModelObj}) {
    return WagnorbsfourState(
      wagnorbsfourModelObj: wagnorbsfourModelObj ?? this.wagnorbsfourModelObj,
    );
  }
}
