//import 'package:bankingtest/views/widgets/landing_page.dart';
// import 'dart:convert';
// import 'dart:developer' as developer;

// import 'package:bankingtest/models/model_repository.dart';
//import 'package:bankingtest/views/widgets/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:bankingtest/models/post_user_api_login.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Mockva Mobile',
            style: TextStyle(fontSize: 40, height: 3),
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: _username,
              decoration: const InputDecoration(
                  hintText: 'username',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'password',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }

                  postLogin(_username.text, _password.text);

                  // if (response) {
                  //   const LandingPage();
                  // }
                },
                child: const Text('Log in'),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )
        ],
      ),
    );
  }
}


//  Navigator.of(context).pushNamedAndRemoveUntil(
//                         '/views/widgets/landing_page',
//                         (Route<dynamic> route) => false);


// ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text('Login Failed!')),
//                     );