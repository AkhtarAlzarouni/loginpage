import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


  @override
  

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool isChecked= false;
   var _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
     body:
     
     Form(
      key: _key,
       child: Container(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("FACI",style: TextStyle( color: const Color.fromARGB(255, 0, 0, 0),fontSize: 50,fontWeight: FontWeight.bold),),
              Text("O",style: TextStyle( color: Color.fromARGB(255, 88, 211, 66),fontSize: 50,fontWeight: FontWeight.bold),)
            ],),
         
          ),
           
          
           
          Center(
            child: Container(
              width: 370,
              margin: EdgeInsets.only(top: 30),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty || value==null){
                    return "Email can't be empty";
                  }
                  else if(
                     !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)
                  ){
                    return "Email is not correct";

                  }
                },
                
                keyboardType: TextInputType.emailAddress,
                maxLines: 5,
                minLines: 1,
             
                decoration: InputDecoration( 
                  hintStyle: TextStyle(
                    color: Colors.amber,
                  ),
                  prefixIcon: Icon(Icons.email),
                  labelText: "Entar Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                ),
              ),
            ),
          ),
       
         
          Center(
            child: Container(
              width: 370,
           margin: EdgeInsets.only(top: 30),
              child: TextFormField(
                 validator: (value) {
                  if(value!.isEmpty || value==null){
                    return "Email can't be empty";
                  }
                
                },
                
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Entar Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                ),
              ),
            
            ),
          ),
       
          Container(
            margin: EdgeInsets.only(right: 220,top: 20),
            child: Column(
          children: [
          Container(
            width: 200,
            height: 50,
            child: CheckboxListTile(
          
              contentPadding: EdgeInsets.all(0),
              title: Text("Remember Me"), 
                            
              
                checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Color.fromARGB(255, 45, 160, 13),
                            
              
              value: isChecked, onChanged:(value){
              isChecked=value ?? false;
              setState(() {
                
              });
              
            }),
          ),
           
          ],
         ) ,
          ),
       
          Container(
            width: 370,
            height: 50,
            margin: EdgeInsets.only(top: 30),
            child: MaterialButton(onPressed: (){
              _key.currentState!.validate();
       
            }, child: Text("LOGIN",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 255, 255, 255)),),color: Color.fromARGB(255, 88, 211, 66), shape: RoundedRectangleBorder
            (borderRadius: BorderRadius.circular(5))),
            
           
          ),
       Container(child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         
         children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text("Don't have an account?   ",style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 0, 0, 0)),)),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text("Singup here",style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 88, 211, 66)),))
       
       ],),)
          ,
         
           
          ],
         ),
       ),
     ) ,
       
     
    );
  }
} 