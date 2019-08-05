import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icons_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _listBody(),
    );
  }

  Widget _listBody() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
    // menuProvider.loadData().then((options) {
    //   print('_listBody()');
    //   print(options);
    // });

    // return ListView(
    //   children: _listItems(),
    // );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((opt){
      options.addAll([ListTile(
        title: Text(opt['texto']), 
        leading: getIcon(opt['icon']),
         trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
         onTap: (){
           Navigator.pushNamed(context, opt['ruta']);
         },
         ),
         Divider()
         ]);
    });
    return options;
  }
}
