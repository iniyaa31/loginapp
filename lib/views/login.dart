import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

 

  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {


  @override



    
  
  
  Widget build(BuildContext context) {

    
    TextEditingController phone=TextEditingController();
    TextEditingController password=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
            Container(
              alignment:Alignment.center,
              padding: const EdgeInsets.all(10) ,
              child: Text('Enter your phone number and password',style: TextStyle(color:Colors.blue,fontWeight: FontWeight.w400,fontSize:10)),
            ),
            Container(
              alignment:Alignment.center,
              padding: const EdgeInsets.all(10) ,
              child: TextField(
                controller: phone,
                decoration: const InputDecoration(
                  labelText: 'Enter phone number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
               alignment:Alignment.center,
              padding: const EdgeInsets.all(10) ,
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: const InputDecoration(
                  labelText: 'Enter password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () =>{
                  print(phone.text),
                  print(password.text),
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>Home(data: phone,datapass: password,))
                  )
                },
              ),
            )
        ],
      ),
      ),
    );
  }
}