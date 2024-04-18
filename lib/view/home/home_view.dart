import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(''),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.location_on_outlined,
          ),
        ),
      ],
    );
  }
}
