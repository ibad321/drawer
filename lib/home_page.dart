import 'package:flutter/material.dart';
import 'package:flutter_application_5/second_page.dart';

class HomePage extends StatelessWidget {
  static const String id = "Home_Page";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        backgroundColor: Colors.grey.withOpacity(0.3),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Ibad"),
              accountEmail: Text("Humdam@hotmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuS4q9gPpC3J0mYiARB4gNfrwx3QHNglobOpDduKih&s"),
              ),
              decoration: BoxDecoration(color: Colors.grey),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, SecondPage.id);
              },
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text("Payment"),
              leading: Icon(Icons.payment),
            ),
            const ListTile(
              title: Text("Privacy"),
              leading: Icon(Icons.privacy_tip),
            ),
            const ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout_rounded),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Home"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuS4q9gPpC3J0mYiARB4gNfrwx3QHNglobOpDduKih&s"),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
