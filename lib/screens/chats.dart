import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  ChatsScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildListChatTile(chats[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}

ListTile _buildListChatTile(Chat chat) {
  return ListTile(
      leading: Image.network(chat.imageURL),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: _buildTrailing(chat),
      ),
      title: Text(
        chat.title,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: chat.subtitle);
}

Column _buildTrailing(Chat chat) {
  if (chat.unread > 0) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          chat.timeStamp,
          style: TextStyle(fontSize: 12, color: Colors.green),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            width: 18,
            height: 18,
            child: Center(
              child: Text(chat.unread.toString(),
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  } else {
    return Column(
      children: <Widget>[
        Text(
          chat.timeStamp,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class Chat {
  String imageURL;
  String title;
  Widget subtitle;
  String timeStamp;
  int unread;

  Chat(this.imageURL, this.title, this.subtitle, this.timeStamp,
      {this.unread = 0});
}

List<Chat> chats = [
  Chat("https://tinyurl.com/wxb7t9u", "Team CoDex",
      Text("Ahamed: Guys join..."), "13/07/2021",
      unread: 3),
  Chat(
    "https://tinyurl.com/wxb7t9u",
    "Shreeen",
    Row(
      children: <Widget>[
        Icon(
          Icons.done_all,
          size: 16,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.mic,
          size: 16,
          color: Colors.blueAccent,
        ),
        Text("0:35"),
      ],
    ),
    "18:45",
  ),
  Chat(
    "https://tinyurl.com/wxb7t9u",
    "Shazna",
    Row(
      children: <Widget>[
        Icon(
          Icons.done_all,
          size: 16,
          color: Colors.black12,
        ),
        Text("Yeah"),
      ],
    ),
    "17:30",
  ),
  Chat(
    "https://tinyurl.com/wxb7t9u",
    "Hiqma",
    Row(
      children: <Widget>[
        Icon(
          Icons.done_all,
          size: 16,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.image,
          size: 16,
          color: Colors.black12,
        ),
        Text("Yeah"),
      ],
    ),
    "17:05",
  ),
  Chat(
    "https://tinyurl.com/wxb7t9u",
    "Safwa",
    Row(
      children: <Widget>[
        Icon(
          Icons.done_all,
          size: 16,
          color: Colors.blueAccent,
        ),
        Text("Not yet..."),
      ],
    ),
    "08:25",
  ),
  Chat(
    "https://tinyurl.com/wxb7t9u",
    "Aathi",
    Row(
      children: <Widget>[
        Icon(
          Icons.done_all,
          size: 16,
          color: Colors.blueAccent,
        ),
        Text("I will do."),
      ],
    ),
    "Yesterday",
  ),
  Chat(
    "https://tinyurl.com/wxb7t9u",
    "BIRIYANI",
    Text("Thomy: Sad laip..."),
    "12/07/2021",
  ),
];
