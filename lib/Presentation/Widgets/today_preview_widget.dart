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
                                child: Text(state.result?.typeOfMeeting?.type ??
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
                                  image: AssetImage('pics/clock-icon1.png')),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Engagements Time',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(formatDate(state
                                        .result?.typeOfMeeting?.startDate
                                        .toString() ??
                                    'Default StartDate')),
                                Text((state
                                        .result?.typeOfMeeting?.defaultStartTime
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Local Time',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(formatDate(state
                                        .result?.typeOfMeeting?.startDate
                                        .toString() ??
                                    'Default StartDate')),
                                Text((state
                                        .result?.typeOfMeeting?.defaultStartTime
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
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(state.result?.brand?.brandName ??
                                    'Default BrandName'),
                                const Icon(Icons.arrow_forward_ios_outlined),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(state.result?.product?.product ??
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
                                ElevatedButton(
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
                              ],
                            )),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        Text(state.result?.dmApprovalBy?.city ??
                                            ''),
                                        const Text(','),
                                        Text(
                                            state.result?.dmApprovalBy?.state ??
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
                              children: [
                                const CircleAvatar(
                                  foregroundImage: AssetImage('pics/logo.png'),
                                ),
                                 Text(
                                    state.result?.w9FormInfo?.fileName??''),
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
                              children: [
                                const CircleAvatar(
                                  foregroundImage: AssetImage('pics/logo.png'),
                                ),
                                const Text('W9 Form'),
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
                            )),
                            Container(
                              color: Colors.grey,
                              width: 600,
                              height: 30,
                              child: const Text('Display Information\'s',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            SingleChildScrollView(child: Column(children: [
                              Column(
                                children: [
                                  const Text('Select Exhibit type'),
                                  Text(state.result?.typeOfMeeting?.type??''),
                                  const  Divider(thickness: 1,indent: 10,)
                                ],
                              ),
                              Column(
                                children: [
                                  const  Text('Program Name'),
                                  Text(state.result?.typeQuesDetails?.last.optionValue??''),
                                  const Divider(thickness: 1,indent: 10,)
                                ],
                              ),
                              Column(
                                children: [
                                  const  Text('Choose D&E Description'),
                                  Text(state.result?.typeQuesDetails?.last.optionId?.selectionKey??''),
                                  const Divider(thickness: 1,indent: 10,)
                                ],
                              ),
                              const Column(
                                children: [
                                  Text('Display/Exhibit Cost'),
                                  Text('\$454'),
                                  Divider(thickness: 1,indent: 10,)
                                ],
                              ),
                              const Column(
                                children: [
                                  Text('Business Rationale'),
                                  Text('NA'),
                                  Divider(thickness: 1,indent: 10,)
                                ],
                              ),
                              const Column(
                                children: [
                                  Text('Commitment Date'),
                                  Text('03/02/24'),
                                  Divider(thickness: 1,indent: 10,)
                                ],
                              )
                            ]),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: Row(children: [
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.file_copy)),
                              const Text('Files'),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                                color: radiusGreen,
                              ),
                              const Text('More'),
                            ],
                          )
                        ]),
                      )
                    ],
                  )),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
    // );
  }
}

//
// Column(
// children: [
// Container(
// height: 50,
// alignment: Alignment.topRight,
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: TextButton(
// child: const Text('Done',style: TextStyle(color: radiusGreen,fontSize: 20,fontWeight: FontWeight.bold)),
// onPressed: () {
// context.pop();
// }),
// ),
// ),
// const  SizedBox(
// height: 500,
// child:  Center(
// child: Text('Coming Soon...',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 25,
// color: radiusGreen)),
// ),
// ),
// ],
// ),
