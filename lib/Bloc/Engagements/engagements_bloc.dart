import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shionogi_trial/Data/Services/api.dart';
import 'package:shionogi_trial/Domain/json_dashboard_list.dart';
import 'package:shionogi_trial/Domain/json_profile_list_today.dart';
import 'package:shionogi_trial/Domain/json_today_engagements.dart';

import '../../Domain/json_profile_list_future.dart';

part 'engagements_event.dart';

part 'engagements_state.dart';

class EngagementsBloc extends Bloc<EngagementsEvent, EngagementsState> {
  EngagementsBloc() : super(EngagementsInitial()) {
    on<ShowEngagementsPageEvent>(showEngagementsPageEvent);
    on<FutureButtonClickedEvent>(futureButtonClickedEvent);
    on<TodayButtonClickedEvent>(todayButtonClickedEvent);
    on<TodayPaginationEvent>(todayPaginationEvent);
    on<FuturePaginationEvent>(futurePaginationEvent);
    on<TodayCardClickedEvent>(todayCardClickedEvent);
  }

  FutureOr<void> showEngagementsPageEvent(
      ShowEngagementsPageEvent event, Emitter<EngagementsState> emit) async {
    final dashBoardList = await ApiService().getTokenList();
    if (dashBoardList != null) {
      final dashBoardJson = DashboardList.fromJson(dashBoardList.data);
      // final castState = state as EngagementsLoadingState;
      emit(
        EngagementsLoadingState(
            user: dashBoardJson.user,
            // isClicked: false,
            todayResult: const [],
            // todayCurrentPage: 1,
            // futureCurrentPage: 1,
            // futureCurrentPage: 1,
            // todayCurrentPage:1,
            futureResult: const [],
            isLoading: true,
            futureCount: 0,
            todayCount: 0),
      );
    }

    final gridList = await ApiService().fetchTodayList(1);
    final gridFutureList = await ApiService().fetchFutureList(1);
    if (gridList != null && gridFutureList != null) {
      final gridTodayJson = ProfilesTodayList.fromJson(gridList.data);
      final gridFutureJson = ProfilesFutureList.fromJson(gridFutureList.data);
      final castState = state as EngagementsLoadingState;

      emit(
        EngagementsLoadingState(
            user: castState.user,
            todayResult: gridTodayJson.result!.toList(),
            isLoading: false,
            isClicked: false,
            futureCount: gridFutureJson.totalCount,
            todayCurrentPage: castState.todayCurrentPage,
            futureCurrentPage: castState.futureCurrentPage,
            todayCount: gridTodayJson.totalCount,
            futureResult: gridFutureJson.result!.toList()),
      );
    }
  }

  FutureOr<void> futureButtonClickedEvent(
      FutureButtonClickedEvent event, Emitter<EngagementsState> emit) async {
    // print ('hello');

    // print ('123');

    final castState = state as EngagementsLoadingState;

    emit(
      castState.copyWith(
        // user: castState.user,
        // todayResult: castState.todayResult,
        // futureCount: castState.futureCount,
        // futureCurrentPage: castState.futureCurrentPage,
        // todayCurrentPage: castState.todayCurrentPage,
        // todayCount: castState.todayCount,
        // isLoading: false,
        // isClicked: true,
        // futureResult: castState.futureResult,
        isClicked: true,
        isLoading: false,
      ),
    );
  }

  FutureOr<void> todayButtonClickedEvent(
      TodayButtonClickedEvent event, Emitter<EngagementsState> emit) async {
    final castState = state as EngagementsLoadingState;
    emit(castState.copyWith(
      // user: castState.user,
      // isLoading: false,
      // futureCount: castState.futureCount,
      // todayCount: castState.todayCount,
      // todayResult: castState.todayResult,
      // futureCurrentPage: castState.futureCurrentPage,
      // todayCurrentPage: castState.todayCurrentPage,
      // futureResult: castState.futureResult,
      // isClicked: false,
      isClicked: false,
    ));
  }

  FutureOr<void> todayPaginationEvent(
      TodayPaginationEvent event, Emitter<EngagementsState> emit) async {
    final castState = state as EngagementsLoadingState;
    emit(castState.copyWith(
        // user: castState.user,
        // todayResult: castState.todayResult,
        // todayCount: castState.todayCount,
        // futureCount: castState.futureCount,
        // isClicked: castState.isClicked,
        // futureResult: castState.futureResult,
        // isLoading: true,
        // futureCurrentPage: castState.futureCurrentPage,
        // todayCurrentPage: castState.todayCurrentPage,
        isLoading: true));
    final gridList = await ApiService().fetchTodayList(event.todayIndex);
    final gridFutureList =
        await ApiService().fetchFutureList(castState.futureCurrentPage);
//
    if (gridList != null && gridFutureList != null) {
      final gridTodayJson = ProfilesTodayList.fromJson(gridList.data);
      final gridFutureJson = ProfilesFutureList.fromJson(gridFutureList.data);

      emit(
        EngagementsLoadingState(
            todayCurrentPage: event.todayIndex,
            user: castState.user,
            todayResult: gridTodayJson.result!.toList(),
            futureCurrentPage: castState.futureCurrentPage,
            isLoading: false,
            isClicked: false,
            futureCount: gridFutureJson.totalCount,
            todayCount: gridTodayJson.totalCount,
            futureResult: gridFutureJson.result!.toList()),
      );
    }
  }

  FutureOr<void> futurePaginationEvent(
      FuturePaginationEvent event, Emitter<EngagementsState> emit) async {
    final castState = state as EngagementsLoadingState;
    emit(castState.copyWith(
        // user: castState.user,
        // todayResult: castState.todayResult,
        // todayCount: castState.todayCount,
        // futureCount: castState.futureCount,
        // isClicked: castState.isClicked,
        // isLoading: true,
        // futureResult: castState.futureResult,
        // todayCurrentPage: castState.todayCurrentPage,
        // futureCurrentPage: castState.futureCurrentPage,
        isLoading: true));
    final gridList =
        await ApiService().fetchTodayList(castState.todayCurrentPage);
    final gridFutureList =
        await ApiService().fetchFutureList(event.futureIndex);
//
    if (gridList != null && gridFutureList != null) {
      final gridTodayJson = ProfilesTodayList.fromJson(gridList.data);
      final gridFutureJson = ProfilesFutureList.fromJson(gridFutureList.data);
      emit(
        EngagementsLoadingState(
            todayCurrentPage: castState.todayCurrentPage,
            user: castState.user,
            todayResult: gridTodayJson.result!.toList(),
            futureCurrentPage: event.futureIndex,
            isLoading: false,
            isClicked: true,
            futureCount: gridFutureJson.totalCount,
            todayCount: gridTodayJson.totalCount,
            futureResult: gridFutureJson.result!.toList()),
      );
    }
  }

  FutureOr<void> todayCardClickedEvent(
      TodayCardClickedEvent event, Emitter<EngagementsState> emit) async {
    final castState = state as EngagementsLoadingState;
    emit(castState.copyWith(isLoading: true));
    final meetingId = castState.todayResult[event.index].meetingId!;
    final todayListEngagements =
        await ApiService().fetchTodayEngagements(meetingId);

    if (todayListEngagements != null) {
      final listTodayJson =
          ListEngagementsToday.fromJson(todayListEngagements.data);
      emit(castState.copyWith(result: listTodayJson.result));
    }

  }
}
