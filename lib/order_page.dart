import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      'title': 'Bakso Amanah Pak Cahyo',
      'status': 'Terkirim',
      'time': 'Yesterday, 12:30 PM',
      'thumbnail': Icons.restaurant
    },
    {
      'title': 'Kopi Kenangan',
      'status': 'Terkirim',
      'time': 'Yesterday, 10:00 AM',
      'thumbnail': Icons.local_cafe
    },
    {
      'title': 'Sate Ayam Pak Jono',
      'status': 'Sedang Memasak',
      'time': 'Today, 09:15 AM',
      'thumbnail': Icons.fastfood
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.green[100],
                child: Icon(order['thumbnail'], color: Colors.green, size: 30),
              ),
              title: Text(order['title'], style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(order['status'], style: TextStyle(color: Colors.grey[600])),
                  Text(order['time'], style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              onTap: () {
                // Define what happens when tapping on an order item
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(order['title']),
                    content: Text('Order status: ${order['status']}\nTime: ${order['time']}'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
