import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Dismissible(
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.startToEnd) {
                  return true;
                } else {
                  return false;
                }
              },
              background:
                  FlatButton(onPressed: () {}, child: Icon(Icons.check)),
              key: ValueKey("Item-$index"),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text(
                  "Title",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("value"),
              ),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction) {
                print('Dismissed $direction');
              },
            ),
          ),
        ],
      ),
    );
  }
}
