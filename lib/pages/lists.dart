import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBar(
          hintText: 'Search for Lists',
          constraints: BoxConstraints(minHeight: 40),
          elevation: MaterialStatePropertyAll(20),
          backgroundColor: MaterialStatePropertyAll(Colors.white10),
          hintStyle: MaterialStatePropertyAll(
              TextStyle(color: Colors.grey, fontSize: 14)),
          side: MaterialStatePropertyAll(BorderSide(color: Colors.white10)),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.more_vert,
          )
        ],
      ),
      body: const Center(
        child: Text(
          'List Page',
        ),
      ),
    );
  }
}
