import 'package:flutter/material.dart';
import 'package:trial/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  //text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


   LoginPage({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const SizedBox(height: 0),
          //logo
          Icon(
            Icons.access_alarm,
            size: 100,
            color: Colors.blue,
          ),

          const SizedBox(height: 25),
           
          Text(
            "APPLIFE:The complete family support system",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 25),
          //email textfield
          
          MyTextField(
            controller: emailController,
            hinttext: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 25),

           MyTextField(
            controller: emailController,
            hinttext: "Password",
            obscureText: false,
          ),

          const SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: GestureDetector(
              child: Container( 
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: Text("Login"),
                  ),
                ),
                color: Colors.blue[900],
                ),
                onTap:(){
                  Navigator.pushNamed(context,'/menu/menu_page');
                } 
            ),
          ),
        ],
        )
      ),
    );
  }
}

