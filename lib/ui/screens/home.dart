import 'package:calcu_list/ui/widgets/add_popup.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcu List"),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Dismissible(
              // confirmDismiss: (direction) async {
              //   if (direction == DismissDirection.startToEnd) {
              //     return true;
              //   } else {
              //     return false;
              //   }
              // },
              background: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black12,
              ),
              key: ValueKey("Item-$index"),
              child: ListTile(
                leading:
                    Image(image: AssetImage("assets/images/non-completed.png")),
                title: Text(
                  "Item $index",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(r"Valor R$"),
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => AddPopup(
                    index: index,
                    title: "Title $index",
                  ),
                ),
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
