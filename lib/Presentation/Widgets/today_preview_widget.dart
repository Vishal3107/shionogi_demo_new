import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/Engagements/engagements_bloc.dart';
import '../../Utils/consts/color.dart';
import 'date_format.dart';

class TodayPreviewWidget extends StatelessWidget {
  // final int index;

  const TodayPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    // value: BlocProvider.of<EngagementsBloc>(context),

    return Center(
      child: BlocBuilder<EngagementsBloc, EngagementsState>(
        builder: (context, state) {
          if (state is EngagementsLoadingState) {
            if (state.isLoading) {
              return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: const SizedBox(
                      height: 750,
                      width: 600,
                      child: Center(child: CircularProgressIndicator())));
            }
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: SizedBox(
                  height: 750,
                  width: 600,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.close,
                                          color: radiusGreen, size: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        state.result?.typeOfMeeting?.type ??
                                            'Default Type'),
                                  ),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: radiusBlue),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(state.result?.displayStatus ??
                                          'Default Status'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: radiusGreen,
                            height: 85,
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image(
                                      image:
                                          AssetImage('pics/clock-icon1.png')),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      'Engagements Time',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(formatDate(state
                                            .result?.typeOfMeeting?.startDate
                                            .toString() ??
                                        'Default StartDate')),
                                    Text((state.result?.typeOfMeeting
                                            ?.defaultStartTime
                                            .toString() ??
                                        'Default StartTime')),
                                  ],
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                  indent: 10,
                                  thickness: 2,
                                  endIndent: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      'Local Time',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(formatDate(state
                                            .result?.typeOfMeeting?.startDate
                                            .toString() ??
                                        'Default StartDate')),
                                    Text((state.result?.typeOfMeeting
                                            ?.defaultStartTime
                                            .toString() ??
                                        'Default StartTime')),
                                  ],
                                ),
                                const SizedBox(
                                  width: 155,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Engagement ID:${state.result?.meetingId}'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(state.result?.brand?.brandName ??
                                            'Default BrandName'),
                                        const Icon(
                                            Icons.arrow_forward_ios_outlined),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Text(state.result?.product
                                                      ?.product ??
                                                  'Default Product'),
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // _showDialog(context,index);
                                      },
                                      // context.read<EngagementsBloc>().add(
                                      //     TodayCardClickedEvent(
                                      //         index: index,
                                      //         context: context));

                                      style: TextButton.styleFrom(
                                          backgroundColor: radiusGreen,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      child: const Center(
                                        child: Text('TimeZone Review',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined,
                                        color: Colors.grey),
                                    Row(
                                      children: [
                                        Text(state.result?.location
                                                ?.locationName ??
                                            ''),
                                        const Text(','),
                                        Text(state.result?.location
                                                ?.locationAddress ??
                                            ''),
                                        const Text(','),
                                        Text(state.result?.location
                                                ?.locationCity ??
                                            ''),
                                        const Text(','),
                                        Text(state.result?.location
                                                ?.locationState ??
                                            ''),
                                        const Text(','),
                                        Text(state.result?.location
                                                ?.locationZip ??
                                            ''),
                                      ],
                                    )
                                  ],
                                )),
                              ),
                              Container(
                                color: Colors.grey,
                                width: 600,
                                height: 30,
                                child: const Text('Approval Details',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Container(
                                child: Row(children: [
                                  CircleAvatar(
                                    backgroundColor: radiusGreen,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            state.result?.dmApprovalBy
                                                    ?.firstName?[0]
                                                    .toString() ??
                                                'Default Name',
                                            style: const TextStyle(
                                                color: Colors.white)),
                                        Text(
                                            state.result?.dmApprovalBy
                                                    ?.lastName?[0]
                                                    .toString() ??
                                                'Default Name',
                                            style: const TextStyle(
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(state.result?.dmApprovalBy
                                                  ?.firstName ??
                                              ''),
                                          Text(state.result?.dmApprovalBy
                                                  ?.lastName ??
                                              ''),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(state
                                                  .result?.dmApprovalBy?.city ??
                                              ''),
                                          const Text(','),
                                          Text(state.result?.dmApprovalBy
                                                  ?.state ??
                                              ''),
                                        ],
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                              Container(
                                color: Colors.grey,
                                width: 600,
                                height: 30,
                                child: const Text('Documents',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          foregroundImage:
                                              AssetImage('pics/logo.png'),
                                        ),
                                        Text(state
                                                .result
                                                ?.approvalDocumentDetails
                                                ?.first
                                                .docName ??
                                            ''),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.lightGreen,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3))),
                                          child: const Text(
                                            'Preview',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.delete_outline,
                                              color: Colors.red,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                              Container(
                                color: Colors.grey,
                                width: 600,
                                height: 30,
                                child: const Text('Documents-W9 Form',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        foregroundImage:
                                            AssetImage('pics/logo.png'),
                                      ),
                                      Text(state.result?.w9FormInfo?.fileName ??
                                          ''),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.lightGreen,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(3))),
                                        child: const Text(
                                          'Preview',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.delete_outline,
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                ],
                              )),
                              Container(
                                color: Colors.grey,
                                width: 600,
                                height: 30,
                                child: const Text('Display Information\'s',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.typeQuesDetails?[0].labelQueId
                                              ?.question ??
                                          ''),
                                      Row(
                                        children: [
                                          const Text('   *  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(state.typeQuesDetails?[0]
                                                  .optionId?.selectionKey ??
                                              ''),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        indent: 10,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.typeQuesDetails?[1].labelQueId
                                              ?.question ??
                                          ''),
                                      Row(
                                        children: [
                                          const Text('   *  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(state.typeQuesDetails?[1]
                                                  .optionValue ??
                                              ''),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        indent: 10,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.typeQuesDetails?[2].labelQueId
                                              ?.question ??
                                          ''),
                                      Row(
                                        children: [
                                          const Text('   *  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(state.typeQuesDetails?[2]
                                                  .optionId?.selectionKey ??
                                              ''),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        indent: 10,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.typeQuesDetails?[3].labelQueId
                                              ?.question ??
                                          ''),
                                      Row(
                                        children: [
                                          const Text('   *  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(
                                              '\$${state.typeQuesDetails?[3].optionValue}'),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        indent: 10,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.typeQuesDetails?[4].labelQueId
                                              ?.question! ??
                                          ''),
                                      Row(
                                        children: [
                                          const Text('   *  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(state.typeQuesDetails?[4]
                                                  .optionValue ??
                                              ''),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        indent: 10,
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(state.typeQuesDetails?[5].labelQueId
                                              ?.question ??
                                          ''),
                                      Row(
                                        children: [
                                          const Text('   *  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(state.typeQuesDetails?[5]
                                                  .optionValue ??
                                              ''),
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                        indent: 10,
                                      )
                                    ],
                                  )
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.file_copy,size: 25,)),
                                const Text('Files'),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_horiz,size: 25,),
                                  color: radiusGreen,
                                ),
                                const Text('More'),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
