import 'package:flutter/material.dart';
import 'package:whats_app_ui/screens/calls.dart';
import 'package:whats_app_ui/screens/camera.dart';
import 'package:whats_app_ui/screens/chats.dart';
import 'package:whats_app_ui/screens/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.teal[800],
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                    icon: Icon(
                      Icons.camera_alt,
                    ),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                )
              ],
            ),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              CameraScreen(),
              ChatsScreen(
                title: '',
              ),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
