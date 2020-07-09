import 'package:cartrack/routes/login/login.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class CustomAppBar extends StatelessWidget {

  final String title;
  final double height;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final bool isVisible;
  const CustomAppBar({this.title = "", this.isVisible = true, this.height = 52,this.marginLeft = 8, this.marginRight = 8, this.marginTop = 6});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (isVisible) ? 1 : 0,
        child: Container(
        height: this.height + marginTop,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
                child: Card(
            elevation: 2,
            margin: EdgeInsets.fromLTRB(this.marginLeft, this.marginTop, this.marginRight, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: Color(0xFFc2c2c2).withOpacity(0.7),
                width: 1
              )
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 8),
                IconButton(
                  icon: Icon(
                    OMIcons.accountCircle,
                    size: 28,
                    color: Color(0xFF0A70BA),
                  ),
                  onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 220.0),
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10.0)), 
                              child: Container(
                                height: 325,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child: ListView(
                                    children: [
                                      ListTile(
                                        dense: true,
                                        leading: Icon(OMIcons.accountCircle, size: 32, color: Color(0xFF0A70BA)),
                                        title: Padding(
                                          padding: const EdgeInsets.only(bottom:4.0),
                                          child: Text('Mbekou Jessie', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                                        ),
                                        subtitle: Text('djuatiojessie@gmail.com', style: TextStyle(color: Colors.grey, fontSize: 9),),
                                        trailing: FlatButton(
                                          onPressed: (){}, 
                                          child: Text('Sign out', style: TextStyle(color: Colors.grey))
                                          ),
                                      ),
                                      Center(child: OutlineButton(
                                        onPressed: (){
                                           Navigator.push(context,MaterialPageRoute(
                                              builder: (context)=> LoginPage()
                                            ));
                                        }, 
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                        child: Text('Root administrator', style: TextStyle(fontSize: 12),)
                                        ),
                                        ),
                                      Divider(),
                                      Text('    Groups', style: TextStyle(color: Colors.grey,)),
                                      ListTile(
                                        dense: true,
                                        leading: Icon(OMIcons.accountCircle, size: 32, color: Colors.purple),
                                        title: Text('Dangote trucks administrators', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                      ),
                                      ListTile(
                                        dense: true,
                                        leading: Icon(OMIcons.accountCircle, size: 32, color: Colors.green),
                                        title: Text('Orange CM cars administrators', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                      ),
                                      ListTile(
                                        dense: true,
                                        leading: Icon(OMIcons.accountCircle, size: 32, color: Colors.brown),
                                        title: Text('Manage profile and groups', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                      ),
                                      Divider(
                                        height: 1 ,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: (){},
                                            child: Text('About carstrack', style: TextStyle(color: Colors.grey))),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 15.0),
                                            child: Text('.', style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold)),
                                          ),
                                          InkWell(
                                            onTap: (){},
                                            child: Text('Terms of service', style: TextStyle(color: Colors.grey)))
                                        ]
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  },
                ),
                SizedBox(width: 12),
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 16,
                  )
                ),
                Spacer(),
                SizedBox(
                  child: IconButton(
                    icon: Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 3.3,
                              backgroundColor: Color(0xFF0A70BA),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                            )
                          ]
                        ),
                        SizedBox(height: 1.0),
                        Stack(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 3.3,
                              backgroundColor: Color(0xFF0A70BA),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                            )
                          ]
                        ),
                        SizedBox(height: 1.0),
                        Stack(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 3.3,
                              backgroundColor: Color(0xFF0A70BA),
                              child: CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.white,
                              ),
                            )
                          ]
                        ),
                      ],
                    ),
                  onPressed: () {},
                  ),
                ),
                SizedBox(width: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
