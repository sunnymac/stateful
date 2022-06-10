import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String a = "Blue";

   
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
                color: Colors.yellow,
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
                    a = "Blue";
                  }, child: Text("Blue")),
                  SizedBox(width: 10, ),
                     ElevatedButton(onPressed: (){
                        print("Red is clicked");
                       a= "Red";
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
