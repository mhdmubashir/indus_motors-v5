// ignore_for_file: must_be_immutable

part of 'swift_bloc.dart';

/// Represents the state of Swift in the application.
class SwiftState extends Equatable {
  SwiftState({this.swiftModelObj});

  SwiftModel? swiftModelObj;

  @override
  List<Object?> get props => [
        swiftModelObj,
      ];
  SwiftState copyWith({SwiftModel? swiftModelObj}) {
    return SwiftState(
      swiftModelObj: swiftModelObj ?? this.swiftModelObj,
    );
  }
}
