// ignore_for_file: must_be_immutable

part of 'ertiga_bloc.dart';

/// Represents the state of Ertiga in the application.
class ErtigaState extends Equatable {
  ErtigaState({this.ertigaModelObj});

  ErtigaModel? ertigaModelObj;

  @override
  List<Object?> get props => [
        ertigaModelObj,
      ];
  ErtigaState copyWith({ErtigaModel? ertigaModelObj}) {
    return ErtigaState(
      ertigaModelObj: ertigaModelObj ?? this.ertigaModelObj,
    );
  }
}
