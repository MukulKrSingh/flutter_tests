import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

 late  FocusNode emailFocusNode;
 late  FocusNode passwordFocusNode;

 late TextEditingController emailTextController;
 late TextEditingController passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {
        if(emailFocusNode.hasFocus || passwordFocusNode.hasFocus) {
          emailFocusNode.unfocus();
          passwordFocusNode.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  key: const Key('email_field'),
                  controller: emailTextController,
                  focusNode: emailFocusNode,
                ),
                TextFormField(
                  key: const Key('pwd_field'),
                  controller: passwordTextController,
                  focusNode: passwordFocusNode,
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  key: const Key('submit_btn'),
                  onPressed: () {
                    //TODO:
                    Navigator.of(context).pushNamed('home_screen');
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
