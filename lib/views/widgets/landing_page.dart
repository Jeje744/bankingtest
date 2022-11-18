import 'package:flutter/material.dart';
import 'package:bankingtest/models/repository_model.dart';

import '../../models/model_user.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<detailuser> lisdetaiuser = [];
  RepositoryModel repository = RepositoryModel();

  get index => null;

  getUser() async {
    lisdetaiuser = await repository.getUser();
    setState(() {});
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Mockva Mobile',
              style: TextStyle(fontSize: 27),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Account Number',
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            width: 400,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'username',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
            ),
          ),
          const Text(
            'Name',
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            width: 400,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'name',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
            ),
          ),
          const Text(
            'Balance',
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            width: 400,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Amount',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.home,
                size: 40,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.attach_money,
                size: 40,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.history,
                size: 40,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Icons.home,
// Icons.attach_money,
// Icons.history,
// Icons.person,
