import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Presentation/Widgets/email_button.dart';
import 'package:shionogi_trial/Utils/consts/color.dart';

import '../../Bloc/Login/login_bloc.dart';
import '../Widgets/show_terms_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();

  // bool passwordVisible = false;
  final bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/pics/login-register.7fb5058852df6b88028f.jpg"),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            height: 435.73,
            width: 500,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    //Shionogi Image
                    image: AssetImage("pics/shionogi_logo.jpg"),
                    height: 52.72,
                    width: 200,
                  ),
                ),
                Padding(
                  //Email TextField
                  padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                  child: TextField(
                    controller: emailCont,
                    cursorColor: Colors.black26,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black26),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  //Password TextField
                  padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                  child: BlocProvider(
                    create: (context) => LoginBloc()..add(const VisibilityToggleEvent()),
                    child: PassButton(passwordCont: passwordCont),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checkBoxValue,
                            onChanged: (value) {},
                          ),
                          const Text('Remember Me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: const Text(
                          'Forgot Button?',
                          style: TextStyle(color: radiusGreen),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailCont.text == "Dawn.Ruccella@uatshionogi.com" &&
                          passwordCont.text == "radius123") {
                        context.go("/Home_Page");
                      }
                      // print(emailCont.text);
                      // print(passwordCont.text);
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 15,
                        backgroundColor: radiusGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Center(
                      child: Text('LOG IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const Text(
                    'By continuing you are confirming you have read and agreed to our'),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                        const ShowTermsWidget(),
                        barrierDismissible: false);
                  },
                  child: const Text('Terms and Conditions',
                      style: TextStyle(color: radiusGreen)),
                ),
                const Text('Version : 1.1.9.0'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}