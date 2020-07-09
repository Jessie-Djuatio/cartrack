import 'package:cartrack/routes/login/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  final _loginKey= GlobalKey<FormState>();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        //title: Icon(Icons.directions_car),
         //centerTitle: true,
        elevation: 20.0,
        iconTheme: IconThemeData(color: Colors.white,
      ),

    ),
          body:
      Container(
        width: double.infinity,

        child: Form(
          key: _loginKey,
          child: ListView(

            children: <Widget>[Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:14.0, bottom: 50.0),
                      child:
                          Column(

                               children: <Widget>[
                                  CircleAvatar(
                                   radius: 40,
                                  backgroundImage: AssetImage('assets/car-2.jpg'),
                                ),

                                Text('CarTrack', style: TextStyle(fontSize: 30.0, color: Colors.green[400], fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                   ] ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'E-mail'
                    ),
                    controller: _usernameController ,
                    //validator: _usernameFieldValidator,

                  ),
                ),
                SizedBox(

                  height: 15.0,
                ),
               
              SizedBox(

                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: TextFormField(
                  obscureText: true,
                  //validator: _passwordFieldValidator,
                  decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                  labelText: 'Password'
                  ),
                  controller: _passwordController,

                ),
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 30.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context)=> HomePage()
                              ));
                             
                            },
                            child: Container( height: 60.0,
                                // margin: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                    color: Colors.green[600],
                                    borderRadius: BorderRadius.circular(10.0)),
                                alignment: Alignment.center,
                                child: Text('Login', style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                                  textAlign: TextAlign.values[2],)
                            ),
                          ),
                        )
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                          child: Container(

                              height: 60.0,

                              // margin: EdgeInsets.all(20.0),

                              alignment: Alignment.center,
                              child: Text('Forgot Password?', style: TextStyle(
                                  fontSize: 16.0, color: Colors.green[600]),
                                textAlign: TextAlign.values[2],)
                          ),
                        )
                    ),

                  ],

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 50),
                      child: GestureDetector(
                        onTap: (){
                          

                        },
                        child: Text('Not yet have an account?', style:
                          TextStyle(
                            fontSize: 18.0, color: Colors.green[600], fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                  ],
                )
              ],
    ),
          ]
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Trace your car anywhere  ', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              //iconTheme: IconThemeData(color: Colors.white,
              Icon(Icons.directions_car, color: Colors.white,)
            ],
          )
          ), 
        color: Colors.green,
        
        
    
      ),
    );
  }
}