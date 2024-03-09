import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Bloc/Login/login_bloc.dart';

class ShowTermsWidget extends StatelessWidget {
  const ShowTermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      backgroundColor: const Color(0xFFF2F2F1),
      surfaceTintColor: Colors.transparent,
      // alignment: Alignment.bottomRight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 600,
            width: 585,
            child: Column(
              children: [
                Container(
                  child: const Center(
                    child: Text('Terms and Conditions'),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: const Column(
                      children: [
                        Text('eNOVA – Radius Direct® TERMS AND CONDITIONS'),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            'Welcome to the Radius Direct® website, applications, mobile apps and other tools (the "Site"). PLEASE READ THE FOLLOWING TERMS AND CONDITIONS CAREFULLY BEFORE USING THE SITE BECAUSE THEY AFFECT YOUR LEGAL RIGHTS AND OBLIGATIONS. Your privacy is very important to us. Accordingly, we have developed the following terms and conditions for you to understand how we collect, use, communicate and make use of personal information. When accessing the Site, we may learn certain information about you during your visit.')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: CircleAvatar(
              child: IconButton(
                icon:const Icon(Icons.close_rounded),

                onPressed: () {
                  context.pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
