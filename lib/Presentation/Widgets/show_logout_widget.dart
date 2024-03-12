import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Utils/consts/color.dart';

class ShowLogoutWidget extends StatelessWidget {
  const ShowLogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 150,
        width: 600,
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 55,
                child: Container(
                    color: radiusGreen,
                    child: const Center(


                      child:
                          Text('Logout', style: TextStyle(color: Colors.white)),
                    ))),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(height: 25,
                child: Text('Are you sure want to logout?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      context.go('/');
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(),
                        backgroundColor: radiusGreen),
                    child:
                        const Text('YES', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(),
                        backgroundColor: radiusGreen),
                    child:
                        const Text('NO', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
