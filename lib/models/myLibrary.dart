import 'package:flutter/material.dart';

class myLibrary extends StatefulWidget {
  const myLibrary({Key? key}) : super(key: key);

  @override
  _myLibraryState createState() => _myLibraryState();
}

class _myLibraryState extends State<myLibrary> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          child: AppBar(
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  tabs: [
                    Text("Playlists"),
                    Text("Artists"),
                    Text("Albums"),
                  ],
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(30),
        ),
      ),
    );
  }
}
