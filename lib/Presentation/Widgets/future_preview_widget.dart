import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Utils/consts/color.dart';

import '../../Bloc/Engagements/engagements_bloc.dart';

class FuturePreviewWidget extends StatelessWidget {
  const FuturePreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EngagementsBloc, EngagementsState>(
      builder: (context, state) {
        if (state is EngagementsLoadingState) {
          return Dialog(
            child: SizedBox(
              height: 550,
              width: 600,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          child: const Text('Done',
                              style: TextStyle(
                                  color: radiusGreen,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            context.pop();
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: Center(
                      child: Text('Coming Soon...',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: radiusGreen)),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
