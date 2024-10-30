import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile section
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              color: Colors.green[100],
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green[300],
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe', // Replace with user's name
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'johndoe@example.com', // Replace with user's email
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            
            // Settings section
            ListTile(
              leading: Icon(Icons.person, color: Colors.green),
              title: Text('Edit Profile'),
              onTap: () {
                // Navigate to Edit Profile Page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.green),
              title: Text('Change Password'),
              onTap: () {
                // Navigate to Change Password Page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.green),
              title: Text('Notifications'),
              onTap: () {
                // Navigate to Notifications Settings Page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Colors.green),
              title: Text('Privacy'),
              onTap: () {
                // Navigate to Privacy Settings Page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.green),
              title: Text('Help & Support'),
              onTap: () {
                // Navigate to Help & Support Page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout'),
              onTap: () {
                // Implement Logout functionality
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Logout'),
                    content: Text('Are you sure you want to log out?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Perform logout actions
                          Navigator.pop(context);
                          // Redirect to login page if needed
                        },
                        child: Text('Logout', style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
