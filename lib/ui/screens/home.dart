import 'package:calcu_list/core/view_models/main_view_model.dart';
import 'package:calcu_list/ui/widgets/add_popup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainViewModel = Provider.of<MainViewModel>(context);

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
            itemCount: mainViewModel.listItems.length,
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
                leading: GestureDetector(
                  onTap: () => mainViewModel.checkItem(index),
                  child: Image(
                    image: mainViewModel.listItems[index].isChecked
                        ? AssetImage("assets/images/completed.png")
                        : AssetImage("assets/images/non-completed.png"),
                  ),
                ),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("asd")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("asd")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("asd")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("asd")),
        ],
      ),
    );
  }
}
