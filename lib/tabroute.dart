import 'package:flutter/material.dart';
import 'tabtypes/simple_tab.dart';
import 'tabtypes/icon_tab.dart';
import 'tabtypes/text_icon_tab.dart';

class Tabs_Route extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(children: <Widget>[
          Stack(
            children: <Widget>[
              // The containers in the background
              new Column(
                children: <Widget>[
                  new Hero(
                      tag: "tabs",
                      child: Container(
                        height: MediaQuery.of(context).size.height * .45,                        
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text('Tabs',
                            style: Theme.of(context)
                                .textTheme
                                .display1
                                .copyWith(color: Colors.black)),
                      )),
                  new Container(
                    height: MediaQuery.of(context).size.height * .55,
                    color: Colors.white,
                  )
                ],
              ),

              new Container(
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .28,
                      right: 20.0,
                      left: 20.0),
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    child: new Card(
                        color: Colors.white,
                        elevation: 4.0,
                        child: Column(children: <Widget>[


//*************************************** Simple Tab **************************************
                          new Card(
                              elevation: 5,
                              child: Container(
                                child: ListTile(
                                  title: new Text("Simple Tab"),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Sim_Tab()),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                  leading: Icon(
                                    Icons.adjust,
                                    color: Colors.red,
                                  ),
                                ),
                              )),

//*************************************** Icon Tab **************************************
                          new Card(
                              elevation: 5,
                              child: Container(
                                child: ListTile(
                                  title: new Text("Icon Tab"),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sim_Icon()),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                  leading: Icon(
                                    Icons.adjust,
                                    color: Colors.pink,
                                  ),
                                ),
                              )),

//*************************************** Text & Icon **************************************
                          new Card(
                              elevation: 5,
                              child: Container(
                                child: ListTile(
                                  title: new Text("Text & Icon"),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TextIcon_Tab()),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                  leading: Icon(
                                    Icons.adjust,
                                    color: Colors.purple,
                                  ),
                                ),
                              )),

                        ])),
                  )),
            ],
          )
        ]));
  }
}
