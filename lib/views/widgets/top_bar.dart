import 'package:flutter/material.dart';
import 'package:bankingtest/views/widgets/body_form.dart';

class TopNav extends StatefulWidget {
  const TopNav({Key? key}) : super(key: key);

  @override
  State<TopNav> createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: const [Text('Banking Transfer')],
      //   ),
      // ),
      body: FormLogin(),
    );
  }
}
