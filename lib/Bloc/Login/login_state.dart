part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginLoadedState extends LoginState {
  final bool isValid;

  const LoginLoadedState({ this.isValid = false});

  @override
  List<Object> get props => [isValid];


}
//
// class LoginState {
//   final bool isValid;
//
//   LoginState({
//     required this.isValid,
//   });
//
//   // Add a copyWith method to create a new instance with updated values
//   LoginState copyWith({
//     bool? isValid,
//   }) {
//     return LoginState(
//       isValid: isValid ?? this.isValid,
//     );
//   }
// }
