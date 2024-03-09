import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Utils/consts/color.dart';

import '../../Bloc/Engagements/engagements_bloc.dart';

class ShowProfileWidget extends StatelessWidget {
  const ShowProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 470,
        width: 600,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const Text(
                  'My Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text(
                      "Done",
                      style: TextStyle(color: radiusGreen,fontSize: 17,fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            BlocBuilder<EngagementsBloc, EngagementsState>(
              builder: (context, state) {
                if (state is EngagementsLoadingState) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                              color: radiusGreen,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(state.user.photo.toString()),
                                    radius: 130,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${state.user.firstName}  ${state.user.lastName} ",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 0, 96, 147)),
                                          onPressed: () {},
                                          child: const Text('CV',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 0, 96, 147)),
                                          child: const Text('Biography',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          onPressed: () {},
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              const Image(
                                  image: AssetImage('pics/profile-info.png')),
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child:  Text('User Details'),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_outlined))
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              const Image(
                                  image: AssetImage('pics/profile-info.png')),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Contact Information'),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_outlined))
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              const Image(
                                  image: AssetImage('pics/profile-info.png')),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Hierarchy Details'),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_outlined))
                            ]),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return const SizedBox();
              },
            )
          ]),
        ),
      ),
    );
  }
}
