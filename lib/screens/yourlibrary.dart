import 'package:final_project/models/myLibrary.dart';
import 'package:final_project/models/genre.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  TextStyle _style = TextStyle(
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          child: AppBar(
            bottom: TabBar(
              tabs: [
                Text(
                  "Music",
                  style: _style,
                ),
                Text(
                  "Genre",
                  style: _style,
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: TabBarView(children: [const myLibrary(), Genre()]),
      ),
    );
  }
}
