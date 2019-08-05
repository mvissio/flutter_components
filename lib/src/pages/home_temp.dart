import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Temp'),
      ),
      body: ListView(children: _createShortItems()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (String opt in options) {
      list..add(ListTile(title: Text(opt)))..add(Divider());
    }
    return list;
  }

  List<Widget> _createShortItems() {
    return options.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$opt!'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            subtitle: Text(opt),
            onTap: (){
              
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
