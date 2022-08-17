import 'package:flutter/material.dart';

import 'package:anim_search_bar/anim_search_bar.dart';

class seaScreen extends StatefulWidget {
  const seaScreen({Key? key}) : super(key: key);

  @override
  State<seaScreen> createState() => _seaScreenState();
}

class _seaScreenState extends State<seaScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        bottom: Tab(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10),
            child: AnimSearchBar(
              rtl: true,
              color: Color.fromARGB(255, 0, 153, 255),
              width: 370,
              style: TextStyle(color: Colors.black),
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Text("search"),
      ),
    );
  }
}
