import 'package:flutter/material.dart';
  
// ส่วนของ Stateful widget
class FirstScreen extends StatefulWidget{
  const FirstScreen({super.key});

    @override
    State<StatefulWidget> createState() {
        return _FirstScreen();
    }
}
class _FirstScreen extends State<FirstScreen>{
 
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              // leading: IconButton(
              //   onPressed: (){},
              //   icon: const Icon(Icons.menu)
              // ),
              title: Text(
                'AppBar Demo',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.green,
              actions: <Widget>[
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.markunread),
                  tooltip: 'Mark as Unread',
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'More Setting',
                ),
              ],
            ),
             body: Material(
                color: Colors.lightGreen,
                child: Center(
                    child: Text(
                        'Hello World',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                        )
                    )
                )
            ),
            drawer: Drawer(
                  child: ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                          DrawerHeader(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                              ),
                              child: Text('Drawer Header'),
                          ),
                          ListTile(
                              title: Text('Item 1'),
                              onTap: () {}
                              ),
                          ListTile(
                              title: Text('Item 2'),
                              onTap: () {},
                          ),
                      ],
                  ),
            ),
          extendBody: true,
          bottomNavigationBar: BottomAppBar(
            color: Colors.green,
            shape: const CircularNotchedRectangle(),
            child: Container(height: 50.0),
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {},
              child: Icon(Icons.add,color: Colors.white,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,          
        );
    }
}