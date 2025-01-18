import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Support Groups Menu Item
          Card(
            child: ListTile(
              leading: Icon(Icons.group, color: Colors.teal),
              title: Text('Support Groups'),
              onTap: () {
                // Navigate to Support Groups Page
                Navigator.pushNamed(context, '/support_groups');
              },
            ),
          ),
          
          // Information & Resources Menu Item
          Card(
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.teal),
              title: Text('Information & Resources'),
              onTap: () {
                // Navigate to Information Page
                Navigator.pushNamed(context, '/info_resources');
              },
            ),
          ),
          
          // Mental Health Support Menu Item
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.teal),
              title: Text('Mental Health Support'),
              onTap: () {
                // Navigate to Mental Health Page
                Navigator.pushNamed(context, '/mental_health');
              },
            ),
          ),
          
          // Personalized Advice Menu Item
          Card(
            child: ListTile(
              leading: Icon(Icons.help_outline, color: Colors.teal),
              title: Text('Personalized Advice'),
              onTap: () {
                // Navigate to Personalized Advice Page
                Navigator.pushNamed(context, '/personalised_advice');
              },
            ),
          ),
          
          // Settings Menu Item
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.teal),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings Page
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ),
        ],
      ),
    );
  }
}
