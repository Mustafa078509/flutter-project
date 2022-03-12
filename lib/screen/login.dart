
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController emailController ;
  late TextEditingController passwoedController ;
  var  keyForm = GlobalKey<FormState>();

  var email="";
  var password="";

  @override
  void initState() {
  emailController=  TextEditingController();
  passwoedController= TextEditingController();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Form(
            key: keyForm,
                  child:Container(
                    color: Colors.black,
                     padding: EdgeInsets.symmetric(horizontal: 30),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,


                  children: [


                    SizedBox(height: 30,),

                    emailText(),
                    SizedBox(height: 60,),

                    passwordText(),

                    SizedBox(height: 60,),

                    Container(

                        width: 100,
                        height: 50,

                        decoration: BoxDecoration(
                            border: Border.all(

                            ),

                            borderRadius: BorderRadius.all(
                                Radius.circular(25.0))),
                        child: ElevatedButton( onPressed: (){
                            if(keyForm.currentState!.validate() )
                            {
                              email=emailController.text;
                              password=passwoedController.text;

                              logins(email, password);

                            }




                        }, child: Text("Login"),
                        )
                    )


                    ],),
                /*color: Colors.black,

             */
                width: double.infinity,

                height: double.infinity,




              )

              ),
      )
        );}


@override
  void dispose() {

    // TODO: implement dispose
    super.dispose();
  }

  Widget emailText(){

    return TextFormField(
        controller: emailController,
        validator: (value) {

          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          else if( value.length==9 ){
            return "need 10 number";

          }


        },

        style: TextStyle(fontSize: 18) ,
        cursorColor: Colors.red,

        decoration: InputDecoration(fillColor: Colors.red,hintText: "email,phone",prefixIcon: Icon(Icons.login),
          filled: true ,

          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(color: Colors.red),  ),
        ));
  }

  Widget  passwordText(){

    return TextFormField(
      controller: passwoedController,
      validator:  (value)
      {
        if(value?.length==0)
        {
          return "need a password ";
        }

      },
      obscureText: true,
      style: TextStyle(fontSize: 18) ,
      cursorColor: Colors.red,

      decoration: InputDecoration(fillColor: Colors.red,hintText: "Password",prefixIcon: Icon(Icons.security),

        filled: true,

        border:new OutlineInputBorder(  borderRadius:new BorderRadius.circular(25)
        ),


      ),
    );

  }

  void logins (String userEmail , String userPass) async {

    print(userEmail);
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userEmail,
          password: userPass
      );
      print(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }else{
        print(e.message);
      }
    }


  }
}
