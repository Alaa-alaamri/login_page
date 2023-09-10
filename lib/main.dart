
import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> { 
   var control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text("Login Page"),
       
         
   
   
      ),
body: Column (children: <Widget> [
   Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Image.asset("assets/login.png"),
                    ), 
                    )
                    ),
Container(
  margin: EdgeInsets.all(30),

  child: Text("Sign In",style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 131, 77, 240)))),

Container(
  margin: EdgeInsets.all(20),

  child:   TextField( 
  
    maxLines: 1,
  
    keyboardType: TextInputType.emailAddress,
  
    decoration: InputDecoration(
  
      labelText: "Enter Your Email",
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(23)))
  
      
  
    ),
  
  ),
),
Container(
margin: EdgeInsets.all(30)
,  child:   TextField( 
  
    maxLines: 1,
  
    keyboardType: TextInputType.emailAddress,
  
    decoration: InputDecoration(
      
      suffix: Icon(Icons.password),
  
      labelText: "Enter Your Password",
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(23)))
  
      
  
    ),
  
  ),

),

ElevatedButton( 
  style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 131, 77, 240),
    minimumSize: Size(350, 40), shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(89))
  ),
  onPressed: (){

},  child:   Text("Login") ,

   ),


   Text("Create an account"),

   Text("forget the password?", style: TextStyle(color: Colors.blue),)

]),

      ),
     
       );
   
   
  }
}
