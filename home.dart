// main.dart

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'login_form.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    BookScreen(),
    TaskScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 26, 26, 1),
        elevation: 0,
      ),
      body: Container(
        color: Color.fromRGBO(21, 20, 21, 1),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white.withOpacity(0.7)),
            label: 'Home',
            backgroundColor: Color.fromRGBO(21, 20, 21, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.white.withOpacity(0.7)),
            label: 'Book',
            backgroundColor: Color.fromRGBO(21, 20, 21, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task, color: Colors.white.withOpacity(0.7)),
            label: 'Task',
            backgroundColor: Color.fromRGBO(21, 20, 21, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white.withOpacity(0.7)),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(21, 20, 21, 1),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen', style: TextStyle(color: Colors.white)),
    );
  }
}

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Book Screen', style: TextStyle(color: Colors.white)),
    );
  }
}

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Task Screen', style: TextStyle(color: Colors.white)),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/profile_image.jpg'), // Replace with your image
          ),
          SizedBox(height: 16.0),
          Text(
            'John Doe',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'johndoe@example.com',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16.0),
          Divider(color: Colors.white),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Account Details',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            'Joined: January 1, 2022',
            style: TextStyle(color: Colors.white),
          ),
          // Add more details as needed
          SizedBox(height: 16.0),
          Divider(color: Colors.white),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginForm()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Use your preferred color
              onPrimary: Colors.white,
            ),
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
