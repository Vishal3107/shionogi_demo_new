import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shionogi_trial/Bloc/Engagements/engagements_bloc.dart';

import '../../Utils/consts/color.dart';
import '../Widgets/grid_card_widget.dart';
import '../Widgets/show_logout_widget.dart';
import '../Widgets/show_profile_widget.dart';

class MainPageDashboard extends StatelessWidget {
  const MainPageDashboard({super.key});

  // int numberOfPages = 10;
  // int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EngagementsBloc()..add(const ShowEngagementsPageEvent()),
      child: Scaffold(
        body: BlocBuilder<EngagementsBloc, EngagementsState>(
          builder: (globalContext, state) {
            if (state is EngagementsLoadingState) {
              return Column(
                children: [
                  Row(
                    children: [
                      const Image(
                        height: 34,
                        width: 130,
                        image: AssetImage("pics/shionogi_logo.jpg"),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('Home',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.home, color: radiusGreen),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('Create',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.groups_outlined,
                            color: radiusGreen),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('Engagements',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.calendar_today_rounded,
                            color: radiusGreen),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('Speaker List',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.mic, color: radiusGreen),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('My Profile',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.person, color: radiusGreen),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('Content',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.file_copy, color: radiusGreen),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text('More',
                            style: TextStyle(color: radiusGreen)),
                        icon: const Icon(Icons.keyboard_arrow_down,
                            color: radiusGreen),
                      ),
                      const SizedBox(width: 412),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none_outlined,
                            color: radiusGreen),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search, color: radiusGreen),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(state.user.photo.toString()),
                          child: InkWell(onTap: () {
                            final bloc =
                                BlocProvider.of<EngagementsBloc>(globalContext);
                            showDialog(
                                context: globalContext,
                                builder: (BuildContext context) {
                                  return BlocProvider.value(
                                    value: bloc,
                                    child: const ShowProfileWidget(),
                                  );
                                });
                          }),
                        ),
                      ),
                      TextButton.icon(
                          onPressed: () {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) =>
                                    const ShowLogoutWidget());
                          },
                          icon: const Icon(
                            Icons.power_settings_new,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(shape:const RoundedRectangleBorder()),
                          label: const Text(
                            'Logout',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        height: 44,
                        color: radiusGreen,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shape: const RoundedRectangleBorder()),
                                  child: Text(
                                    state.user.singleBrand.brandName.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.white),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shape: const RoundedRectangleBorder()),
                                  child: Text(
                                    state.user.singleProduct.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                color: Colors.white,
                                child: const InkWell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('pics/filter-alt.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              globalContext
                                  .read<EngagementsBloc>()
                                  .add(TodayButtonClickedEvent());
                            },
                            child: SizedBox(
                              width: MediaQuery.of(globalContext).size.width *
                                  0.25,
                              height: 60,
                              child: Card(
                                shape: const RoundedRectangleBorder(),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: radiusGreen),
                                        child: const Center(
                                          child: Image(
                                            image:
                                                AssetImage('pics/calender.png'),
                                            height: 30,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Today\'s Engagements'),
                                    ),
                                    const SizedBox(width: 50),
                                    Text(
                                      state.todayCount.toString(),
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              globalContext
                                  .read<EngagementsBloc>()
                                  .add(FutureButtonClickedEvent());
                            },
                            child: SizedBox(
                              width: MediaQuery.of(globalContext).size.width *
                                  0.25,
                              height: 60,
                              child: Card(
                                shape: const RoundedRectangleBorder(),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: Colors.cyan),
                                        child: const Center(
                                          child: Image(
                                            image: AssetImage(
                                                'pics/tab-future.png'),
                                            height: 30,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text('Future Engagements'),
                                    const SizedBox(width: 50),
                                    Text(
                                      state.futureCount.toString(),
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(globalContext).size.width * 0.50,
                            height: 60,
                            child: Card(
                              shape: const RoundedRectangleBorder(),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  const Text('Total Engagements'),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    (state.todayCount! + state.futureCount!)
                                        .toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const GridCard(),
                    ]),
                  )
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
