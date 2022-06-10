import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String a = "ABC";
  Color mycolor = Colors.green;
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    

   
    return MaterialApp(
       
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
         appBar: AppBar(
           title: Text("Stateful Demo"),
         ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(

                    onPressed: (){
                    print("Blue is clicked");
                    setState(() {
                      mycolor = Colors.blue;
                       a = "Blue";
                    });
                   
                  }, child: Text("DARK MODE")),
                  SizedBox(width: 10, ),
                     ElevatedButton(onPressed: (){
                       mycolor= Colors.red;
                        print("Red is clicked");
                        setState(() {
                           a= "Red";
                        });
                      
                     }, child: Text("LIGHT MODE")),
                ],
              ),

              SizedBox(height: 100,),
              Text("LIGHT MODE SELECTED",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),)
            ],
          ),
        ),
      )
      ,
    );
  }
}
