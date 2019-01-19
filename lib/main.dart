import 'package:flutter/material.dart';
import 'package:bumb/transaction_list.dart';

void main() => runApp(BumpApp());

class BumpApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bump"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), title: Text("Transactions")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("Contacts")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: TransactionList(),
    );
  }
}
