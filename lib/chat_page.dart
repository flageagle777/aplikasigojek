  import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Hendro',
      'lastMessage': 'Ditunggu',
      'time': '09:15 AM',
      'profilePicture': Icons.person,
    },
    {
      'name': 'Jane Smith',
      'lastMessage': 'Terima kasih',
      'time': 'Yesterday',
      'profilePicture': Icons.person,
    },
    {
      'name': 'Restaurant X',
      'lastMessage': 'Order kamu sudah dikonfirmasi',
      'time': 'Yesterday',
      'profilePicture': Icons.restaurant,
    },
    {
      'name': 'Support',
      'lastMessage': 'Terima kasih atas komplain anda.',
      'time': '2 days ago',
      'profilePicture': Icons.support_agent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green[100],
              child: Icon(chat['profilePicture'], color: Colors.green, size: 30),
            ),
            title: Text(chat['name'], style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(chat['lastMessage'], maxLines: 1, overflow: TextOverflow.ellipsis),
            trailing: Text(chat['time'], style: TextStyle(color: Colors.grey, fontSize: 12)),
            onTap: () {
              // Define what happens when tapping on a chat item
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailPage(chat['name']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Dummy Chat Detail Page to navigate to
class ChatDetailPage extends StatelessWidget {
  final String chatName;
  ChatDetailPage(this.chatName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatName),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Chat with $chatName'),
      ),
    );
  }
}
