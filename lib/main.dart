import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Feedback(),
    );
  }
}

class Feedback extends StatefulWidget{
  @override
  _Feedback createState () => _Feedback();
 }

 class _Feedback extends State<Feedback>{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       body: Column(
         children: <Widget>[
           SizedBox(height: 50,),
           Container(

             margin: EdgeInsets.only(left:40, right: 40),

             child: TextFormField(
               decoration: InputDecoration(
                   labelText: 'Name'
               ),
             ),
             color: Colors.purpleAccent[100],
           ),

           SizedBox(height: 6,),
           Container(

             margin: EdgeInsets.only(left:40, right: 40),

             child: TextFormField(
               decoration: InputDecoration(
                   labelText: 'Phone Number'
               ),
             ),
             color: Colors.purpleAccent[100],
           ),

           SizedBox(height: 10,),
           Container(

             margin: EdgeInsets.only(left:40, right: 40),

             child: TextFormField(
               decoration: InputDecoration(
                 labelText: 'Address'
               ),
             ),
             color: Colors.purpleAccent[100],
           ),

           SizedBox(height: 10,),
           Container(
             margin: EdgeInsets.only(left:40, right: 40),
             child: TextFormField(
               decoration: InputDecoration(
                   labelText: 'Message'
               ),
             ),
             color: Colors.purpleAccent[100],
           ),
           SizedBox(height: 15,),
           FlatButton(
             child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
             onPressed: () =>  _launchURL('nimratrandhawa5614@gmail.com');
             color: Colors.black,
           ),
         ],

       ),
         
       
     );
   }

   _launchURL(String toMailId) async{
     var url = 'mailto:$toMailId';
     if (await canLaunch(url)){
       await launch(url);
     }
     else{
       throw 'Could not launch $url';
     }
   }
 }