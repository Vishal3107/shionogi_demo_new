import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:shionogi_trial/Bloc/Engagements/engagements_bloc.dart';
import 'package:shionogi_trial/Presentation/Widgets/today_preview_widget.dart';

import '../../Utils/consts/color.dart';
import 'date_format.dart';
import 'future_preview_widget.dart';

class GridCard extends StatelessWidget {
  const GridCard({super.key});

  int _calculateItemCount(int totalItems, int currentPage) {
    const itemsPerPage = 6;
    final remainingItems = totalItems - (currentPage - 1) * itemsPerPage;
    return remainingItems > itemsPerPage ? itemsPerPage : remainingItems;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EngagementsBloc, EngagementsState>(
        builder: (builderContext, state) {
      if (state is EngagementsLoadingState) {
        if (state.isLoading) {
          return const SizedBox(
              height: 800, child: Center(child: CircularProgressIndicator()));
        }
        if (state.isClicked == false) {
          return Column(
            children: [
              Container(
                color: radiusBackground,
                height: 775,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    // mainAxisSpacing: 15,
                    // crossAxisSpacing: 30,
                  ),
                  itemCount: _calculateItemCount(
                      state.todayCount!, state.todayCurrentPage),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          // showDialog(
                          //     barrierDismissible: false,
                          //     context: builderContext,
                          //     builder: (BuildContext context) {
                          //       return BlocProvider.value(
                          //         value: BlocProvider.of<EngagementsBloc>(
                          //             builderContext),
                          //         child:const TodayPreviewWidget(),
                          //       );
                          //     });
                          _showDialog(builderContext);
                          builderContext
                              .read<EngagementsBloc>()
                              .add(TodayCardClickedEvent(
                                  index: index));
                          // print(index);
                        },
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          elevation: 5.0,
                          shadowColor: radiusPaddingBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'ID: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(state
                                            .todayResult[index].meetingId!),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: radiusBlue),
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(state.todayResult[index]
                                                .engagementType!.type!),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: radiusYellow),
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(state.todayResult[index]
                                                .displayStatus!),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(state
                                        .todayResult[index].brand!.brandName!),
                                  ),
                                  const Icon(Icons.arrow_forward_ios_outlined),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(state.todayResult[index].product!
                                            .product!),
                                        const Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Text(
                                            "\u{0050}\u{0049}",
                                            style: TextStyle(
                                              color: radiusRed,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                        // RichText(text:  TextSpan(text: "${state.todayResult[index].product?.product}\u{0050}\u{0049}"))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              const Text(
                                                'Exhibit Type: ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(state
                                                  .todayResult[index]
                                                  .typeQuesDetails!
                                                  .first
                                                  .optionId!
                                                  .selectionKey
                                                  .toString()),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              const Text(
                                                'Program Name: ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(state
                                                  .todayResult[index]
                                                  .typeQuesDetails!
                                                  .last
                                                  .optionValue
                                                  .toString()),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            // _showDialog(builderContext);
                                            // builderContext
                                            //     .read<EngagementsBloc>()
                                            //     .add(TodayCardClickedEvent(
                                            //         index: index));
                                            // print(index);
                                          },
                                          // context.read<EngagementsBloc>().add(
                                          //     TodayCardClickedEvent(
                                          //         index: index,
                                          //         context: context));

                                          style: TextButton.styleFrom(
                                              backgroundColor: radiusGreen,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))),
                                          child: const Center(
                                            child: Text('TimeZone Review',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(formatDate(state
                                            .todayResult[index].startTime
                                            .toString())),
                                        Text(formatTime(state
                                            .todayResult[index].startTime
                                            .toString())),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 1200),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: 450,
                    child: NumberPaginator(
                      numberPages: (state.todayCount! / 6).ceil(),
                      initialPage: state.todayCurrentPage - 1,
                      config: const NumberPaginatorUIConfig(
                          buttonShape: BeveledRectangleBorder(),
                          buttonSelectedBackgroundColor: radiusGreen,
                          buttonUnselectedBackgroundColor: Colors.transparent,
                          buttonUnselectedForegroundColor: Colors.black,
                          buttonSelectedForegroundColor: Colors.white),
                      onPageChange: (int selectedPageToday) {
                        context.read<EngagementsBloc>().add(
                            TodayPaginationEvent(
                                todayIndex: selectedPageToday + 1));
                        // print("${selectedPage}");
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return Column(
            children: [
              Container(
                color: radiusBackground,
                height: 775,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    // mainAxisSpacing: 15,
                    // crossAxisSpacing: 30,
                  ),
                  itemCount: _calculateItemCount(
                      state.futureCount!, state.futureCurrentPage),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          showDialog(
                              barrierDismissible: false,
                              context: builderContext,
                              builder: (BuildContext context) {
                                return BlocProvider.value(
                                  value: BlocProvider.of<EngagementsBloc>(
                                      builderContext),
                                  child: const FuturePreviewWidget(),
                                );
                              });
                        },
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          elevation: 3.0,
                          shadowColor: radiusPaddingBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'ID: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(state
                                            .futureResult![index].meetingId!),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: radiusBlue),
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(state
                                                .futureResult![index]
                                                .engagementType!
                                                .type!),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: radiusYellow),
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(state
                                                .futureResult![index]
                                                .displayStatus!),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(state.futureResult![index]
                                        .brand!.brandName!),
                                  ),
                                  const Icon(Icons.arrow_forward_ios_outlined),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(state.futureResult![index].product!
                                            .product!),
                                        const Text(
                                          "\u{0050}\u{0049}",
                                          style: TextStyle(
                                              color: radiusRed, fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (state
                                                .futureResult?[index]
                                                .typeQuesDetails
                                                ?.first
                                                .optionId
                                                ?.selectionKey !=
                                            null)
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                const Text('Exhibit Type: '),
                                                Text(state
                                                    .futureResult![index]
                                                    .typeQuesDetails!
                                                    .first
                                                    .optionId!
                                                    .selectionKey
                                                    .toString()),
                                              ],
                                            ),
                                          ),
                                        if (state
                                                .futureResult?[index]
                                                .typeQuesDetails
                                                ?.last
                                                .optionValue !=
                                            null)
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Program Name: ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(state
                                                    .futureResult![index]
                                                    .typeQuesDetails!
                                                    .last
                                                    .optionValue
                                                    .toString()),
                                              ],
                                            ),
                                          ),
                                        if (state.futureResult?[index]
                                                    .speaker !=
                                                null &&
                                            state.futureResult![index].speaker!
                                                .isNotEmpty)
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Speaker: ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(state.futureResult![index]
                                                    .speaker!
                                                    .join(',')),
                                              ],
                                            ),
                                          ),
                                        if (state
                                                .futureResult?[index].invited !=
                                            null)
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(
                                                'Attendees Invited: ${state.futureResult?[index].invited}',
                                                style: const TextStyle(
                                                    color: radiusGreen)),
                                          ),
                                        if (state.futureResult?[index]
                                                .confirmedInvitees !=
                                            null)
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  'Attendees Confirmed: ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(state.futureResult![index]
                                                    .confirmedInvitees
                                                    .toString()),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  // if (state.futureResult![index].typeQuesDetails!
                                  //     .first.optionId!.selectionKey ==
                                  //     null &&
                                  //     state.futureResult![index].typeQuesDetails!.last
                                  //         .optionValue ==
                                  //         null)
                                  //   Text('HI'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            showDialog(
                                                barrierDismissible: false,
                                                context: builderContext,
                                                builder:
                                                    (BuildContext context) {
                                                  return BlocProvider.value(
                                                    value: BlocProvider.of<
                                                            EngagementsBloc>(
                                                        builderContext),
                                                    child:
                                                        const FuturePreviewWidget(),
                                                  );
                                                });
                                          },
                                          style: TextButton.styleFrom(
                                              backgroundColor: radiusGreen,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))),
                                          child: const Center(
                                            child: Text('TimeZone Review',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(formatDate(state
                                            .futureResult![index].startTime
                                            .toString())),
                                        Text(formatTime(state
                                            .futureResult![index].startTime
                                            .toString())),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 1200),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: 450,
                    child: NumberPaginator(
                      numberPages: (state.futureCount! / 6).ceil(),
                      initialPage: state.futureCurrentPage - 1,
                      config: const NumberPaginatorUIConfig(
                          buttonShape: BeveledRectangleBorder(),
                          buttonSelectedBackgroundColor: radiusGreen,
                          buttonUnselectedBackgroundColor: Colors.transparent,
                          buttonUnselectedForegroundColor: Colors.black,
                          buttonSelectedForegroundColor: Colors.white),
                      onPageChange: (int selectedPageFuture) {
                        context.read<EngagementsBloc>().add(
                            FuturePaginationEvent(
                                futureIndex: selectedPageFuture + 1));
                        // print("${selectedPage}");
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        }
      } else {}
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }

  void _showDialog(BuildContext builderContext) {
    showDialog(
      barrierDismissible: false,
      context: builderContext,
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: BlocProvider.of<EngagementsBloc>(builderContext),
          child: const TodayPreviewWidget(),
        );
        // context.read<EngagementsBloc>().add(const TodayCardClickedEvent());
        // return BlocProvider(
        //   create: (context) => EngagementsBloc().add(TodayCardClickedEvent()),
        // );
      },
    );
  }
}
