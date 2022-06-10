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
         
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                color: mycolor,
                child: Text("$a", style: TextStyle(fontSize: 50),),
              ),
              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    print("Blue is clicked");
                    setState(() {
                      mycolor = Colors.blue;
                       a = "Blue";
                    });
                   
                  }, child: Text("Blue")),
                  SizedBox(width: 10, ),
                     ElevatedButton(onPressed: (){
                       mycolor= Colors.red;
                        print("Red is clicked");
                        setState(() {
                           a= "Red";
                        });
                      
                     }, child: Text("Red")),
                ],
              )
            ],
          ),
        ),
      )
      ,
    );
  }
}
