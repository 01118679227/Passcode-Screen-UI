import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List languages = ['1 km', '2 km', '3 km','4 km','5 km'];
  var selectedLang = '5 km';

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: null)
                ],
              ),
              SizedBox(width: 100.0,),
              Center(
                child: Container(
                  padding: EdgeInsets.all(1.5),
                  width: 60.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40.0),
                    color: Colors.indigo,
                  ),
                  child: FlutterSwitch(
                    inactiveColor: Colors.lightBlue.shade100,
                    activeColor: Colors.lightBlue.shade200,
                    inactiveTextColor: Colors.indigo,
                    activeTextColor: Colors.indigo,
                    toggleColor: Colors.blueAccent,
                    inactiveText: "OFF",
                    width: 80.0,
                    height: 25.0,
                    valueFontSize: 10.0,
                    toggleSize: 18.0,
                    value: status,
                    borderRadius: 20.0,
                    padding: 4.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(width: 70.0,),
              DropdownButton<String>(
                style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),
                dropdownColor: Colors.white70,
                items: languages.map((var item){
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (val){
                 setState(() {
                   selectedLang = val;
                 });
                },
                value: selectedLang,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                child: Text(
                  'Set Passcode',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 20.0),
                child: Icon(
                  Icons.vpn_key,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Text(
              'Enter your new 6 digit passcode',
              style: TextStyle(fontSize: 15.0, color: Colors.indigo),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 80.0),
                child: TextField(
                  controller: null,
                  obscureText: true,
                  //maxLength: 6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),
                  decoration: InputDecoration(
                    hintText: '__ __ __ __ __ __',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 30.0,
                    ),
                    border: InputBorder.none,
                  ),

                ),
              ),
              Padding(
                padding :EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                child: Container(
                  padding :EdgeInsets.only(left: 20.0,top: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  //padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: TextField(
                    controller: null,
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    color: Colors.white,
                    onPressed: ()=> print('Tapped'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.access_time,color: Colors.indigo,),
                        SizedBox(width: 10.0,),
                        Text('Now',style: TextStyle(color: Colors.indigo,fontSize: 14.0),),


                      ],
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    color: Colors.white,
                    onPressed: ()=> print('Tapped'),
                    child: Text('view All',style: TextStyle(color: Colors.indigo,fontSize: 14.0),),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 19.0,),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 15.0,right: 15.0),
                    color: Colors.indigo,
                    onPressed: ()=> print('Tapped'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('0 - 12',style: TextStyle(color: Colors.white,fontSize: 14.0),),
                        SizedBox(width: 10.0,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22.0,top: 7.0),
                          child: Text('Free',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.0,),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 15.0,right: 15.0),
                    color: Colors.white,
                    onPressed: ()=> print('Tapped'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('12 - 20',style: TextStyle(color: Colors.indigo,fontSize: 14.0),),
                        SizedBox(width: 10.0,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22.0,top: 7.0),
                          child: Text('\$${50}',style: TextStyle(color: Colors.indigo,fontSize: 10.0),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.0,),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0),
                    color: Colors.white,
                    onPressed: ()=> print('Tapped'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('20 - 30',style: TextStyle(color: Colors.grey,fontSize: 14.0),),
                        SizedBox(width: 10.0,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22.0,top: 7.0),
                          child: Text('',style: TextStyle(color: Colors.indigo,fontSize: 10.0),),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(width: 14.0,),
                ],
              ),
              SizedBox(height: 24.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 22.0,),
                  Icon(Icons.wb_sunny,color: Colors.indigo,size: 17.0,),
                  SizedBox(width: 5.0,),
                  Container(
                    width: 85.0,
                    height: 30.0,
                    padding: EdgeInsets.all(1.3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.blueAccent.shade100
                    ),
                    child: RaisedButton(
                      //padding: EdgeInsets.only(left: 6.0,right: 6.0),
                      color: Colors.white,
                      onPressed: ()=> print('Tapped'),
                      child:  Center(child: Text('Mechanic',style: TextStyle(color: Colors.indigo,fontSize: 11.4),)),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Container(
                    width: 85.0,
                    height: 30.0,
                    padding: EdgeInsets.all(1.3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.blueAccent.shade100
                    ),
                    child: RaisedButton(
                      //padding: EdgeInsets.only(left: 6.0,right: 6.0),
                      color: Colors.white,
                      onPressed: ()=> print('Tapped'),
                      child:  Center(child: Text('Servant',style: TextStyle(color: Colors.indigo,fontSize: 11.4),)),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Container(
                    width: 105.0,
                    height: 30.0,
                    padding: EdgeInsets.all(1.3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.blueAccent.shade100
                    ),
                    child: RaisedButton(
                      //padding: EdgeInsets.only(left: 6.0,right: 6.0),
                      color: Colors.white,
                      onPressed: ()=> print('Tapped'),
                      child:  Center(child: Text('Businessman',style: TextStyle(color: Colors.indigo,fontSize: 11.4),)),
                    ),
                  ),
                  //SizedBox(width: 29.0,),
                ],
              ),
              SizedBox(height: 20.0,),
              Text('Note:All contacted buddies may not respond to your post.',
                style: TextStyle(color: Colors.grey,fontSize: 13.0),
              ),
              SizedBox(height: 12.0,),
              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: RaisedButton(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 10.0),
                  color: Colors.indigo,
                  onPressed: () => print('post'),
                  child: Center(
                    child: Text('Post',
                      style: TextStyle(color: Colors.white,fontSize: 24.0),),
                  ),
                ),
              ),
              SizedBox(height: 12.0,),

            ],
          ),
        ],
      ),
    );
  }
}
