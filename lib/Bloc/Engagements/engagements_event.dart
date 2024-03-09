part of 'engagements_bloc.dart';

abstract class EngagementsEvent extends Equatable {
  const EngagementsEvent();
}

class ShowEngagementsPageEvent extends EngagementsEvent {
  const ShowEngagementsPageEvent();

  @override
  List<Object> get props => [];
}

class TodayButtonClickedEvent extends EngagementsEvent {
  @override
  List<Object> get props => [];
}

class FutureButtonClickedEvent extends EngagementsEvent {
  @override
  List<Object> get props => [];
}

class TodayPaginationEvent extends EngagementsEvent {
  final int todayIndex;

  const TodayPaginationEvent({required this.todayIndex});

  @override
  List<Object> get props => [todayIndex];
}

class FuturePaginationEvent extends EngagementsEvent {
  final int futureIndex;

  const FuturePaginationEvent({required this.futureIndex});

  @override
  List<Object> get props => [futureIndex];
}

class TodayCardClickedEvent extends EngagementsEvent {
  final int index;
  // final BuildContext context;

  const TodayCardClickedEvent({required this.index});

  @override
  List<Object> get props => [index];
}
