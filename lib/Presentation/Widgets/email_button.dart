import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/Login/login_bloc.dart';

class PassButton extends StatelessWidget {
  PassButton({super.key,required this.passwordCont});
   TextEditingController passwordCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if(state is LoginLoadedState){
            return TextField(
              controller: passwordCont,
              obscureText: state.isValid,
              cursorColor: Colors.black26,
              obscuringCharacter: '.',
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.black26),
                suffixIcon: IconButton(
                  onPressed: () =>context.read<LoginBloc>().add(const VisibilityToggleEvent()),
                  icon: Icon(state.isValid
                      ? Icons.visibility
                      : Icons.visibility_off),
                  color: Colors.black26,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                ),
              ),
            );
          }else {
            return const CircularProgressIndicator();
          }
        }
    );
  }
}
