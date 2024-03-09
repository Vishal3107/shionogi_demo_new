part of 'engagements_bloc.dart';

abstract class EngagementsState extends Equatable {
  const EngagementsState();
}

class EngagementsInitial extends EngagementsState {
  @override
  List<Object> get props => [];
}

class EngagementsLoadingState extends EngagementsState {
  bool? isClicked;
  UserData user;
  final List<ResultToday> todayResult;
  final List<ResultFuture>? futureResult;
  int? todayCount;
  int? futureCount;
  bool isLoading;
  int todayCurrentPage;
  int futureCurrentPage;
  Result? result;


  EngagementsLoadingState({
    required this.user,
    required this.todayResult,
    this.futureResult,
    this.isClicked = true,
    this.todayCount,
    this.futureCount,
    required this.isLoading,
    this.todayCurrentPage = 1,
    this.futureCurrentPage = 1,
    this.result,
  });

  EngagementsLoadingState copyWith({
    bool? isClicked,
    UserData? user,
    List<ResultToday>? todayResult,
    List<ResultFuture>? futureResult,
    int? todayCount,
    int? futureCount,
    bool? isLoading,
    int? todayCurrentPage,
    int? futureCurrentPage,
    Result? result,
  }) {
   return EngagementsLoadingState(
      user: user ?? this.user,
      todayResult: todayResult ?? this.todayResult,
      isLoading: isLoading ?? this.isLoading,
      todayCurrentPage: todayCurrentPage ?? this.todayCurrentPage,
      futureCurrentPage: futureCurrentPage ?? this.futureCurrentPage,
      todayCount: todayCount ?? this.todayCount,
      futureCount: futureCount ?? this.futureCount,
      futureResult: futureResult ?? this.futureResult,
      isClicked: isClicked ?? this.isClicked,
     result: result??this.result,
    );
  }

  @override
  List<Object?> get props => [
        todayResult,
        user,
        isClicked,
        futureResult,
        todayCount,
        futureCount,
        isLoading,
        todayCurrentPage,
        futureCurrentPage,
        result,
      ];
}
