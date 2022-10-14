import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utils/dummy_data_list.dart';

class ListBuildScreen extends StatelessWidget {
  ListBuildScreen({Key? key}) : super(key: key);

  final _colors = [Colors.blue, Colors.yellow, Colors.purple, Colors.accents];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List builder')),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              child: CircleAvatar(radius: 50)),
          ListTile(
            leading: Icon(Icons.home_work),
            title: Text('home'),
          ),
        ],
      )),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Container(
          //   height: 200,
          //   width: 300,
          //   color: Colors.amber,
          // ),
          // Container(
          //   height: 200,
          //   width: 300,
          //   color: Colors.blue,
          // ),
          // Container(
          //     // height: 200,
          //     // width: 300,
          //     // color: Colors.teal,

          //     ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: categoryList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1),
            itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      categoryList[index].catColor.withOpacity(0.5),
                      categoryList[index].catColor,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                // color: categoryList[index].catColor,
                child: Text(
                  categoryList[index].catName,
                )),
          ),
          // ListView.builder(
          //   itemCount: _mylist.length,
          //   shrinkWrap: true,

          //   itemBuilder: (context, index) => (Container(
          //     height: 200,
          //     width: 200,
          //     color: Colors.blue,
          //   )),
          // )
        ],
      ),
    );
  }
}
