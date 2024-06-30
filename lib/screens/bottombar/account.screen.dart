import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_sustain/screens/bottombar/favorites_screen.dart';
import 'package:flutter_sustain/screens/bottombar/notification_screen.dart';
import 'home.screen.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 2;

  final List<Widget> _screens = [
    Center(child: Text('Ana Sayfa', style: TextStyle(fontSize: 24.0))),
    Center(child: Text('Favoriler', style: TextStyle(fontSize: 24.0))),
    Center(child: Text('Hesap', style: TextStyle(fontSize: 24.0))),
    Center(child: Text('Bildirimler', style: TextStyle(fontSize: 24.0))),
  ];

  @override
  Widget build(BuildContext context) {
    var curvedNavigationBar = CurvedNavigationBar(
      index: _selectedIndex,
      height: 60.0,
      items: <Widget>[
        Icon(Icons.home, size: 25, color: Colors.white),
        Icon(Icons.favorite, size: 25, color: Colors.white),
        Icon(Icons.person, size: 25, color: Colors.white),
        Icon(Icons.notifications, size: 25, color: Colors.white),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });

        if (index == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else if (index == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FavoritesScreen()));
        } else if (index == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AccountScreen()));
        } else if (index == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationScreen()));
        }
      },
      color: Color.fromARGB(255, 47, 71, 2),
      buttonBackgroundColor: Colors.black,
      backgroundColor: Colors.white,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: curvedNavigationBar,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: AccountScreen(),
    );
  }
}

void main() {
  runApp(MyApp());
}
