import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Cart extends StatefulWidget {



   Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {




  Future getdata() async {
    var Url = Uri.parse("http://192.168.1.125/pro/Cart.php");
    var res = await http.get(Url);
    var response = jsonDecode(res.body);
    setState(() {
      posts.addAll(response);
    });
  }

  List posts = [];
@override
  void initState() {
  getdata();
  // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
      int  priceall=0;

    return Scaffold(



      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,

        title: Text("For Sell",
          style: TextStyle(color: Colors.grey,fontSize: 30, fontWeight: FontWeight.w900),),
        centerTitle: true,


        actions: [
          IconButton(
            color: Colors.grey,
            icon: Icon(Icons.search),
            onPressed: () {},),
          IconButton(
            color: Colors.grey,

            icon: Icon(Icons.shopping_cart),
            onPressed: () {},),

        ],

      ),

      drawer: Drawer(

        backgroundColor: Colors.blue,
        elevation: 4,
        child: Column(


          children: [
            SizedBox(width: 100,),
            SizedBox(height: 50,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category_sharp, size: 40,),
                  Text("Category", style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w900),)
                ]
            )
            ,

            SizedBox(height: 60,),


            liSTMENU()


          ],


        ),

      ),



      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: ListView.builder(
    itemCount: posts.length,
          itemBuilder:
          (context, index) {

      priceall = int.parse(posts[index]['Price'].substring(1,posts[index]['Price'].length))+priceall;


return  Card(
  child: ListTile(
    trailing: Text(posts[index]['Price'].toString(),style: TextStyle(fontSize: 20,color: Colors.red),),
    leading:CircleAvatar(

      backgroundImage: NetworkImage( posts[index]['image']),
    ),


    title: Text(posts[index]['name'],style: TextStyle(fontSize: 20),),




  ),
);
    }

    )
    ),



      bottomNavigationBar:  Container(
      color: Colors.red,
      height: 80,
      width: 200,

      child: Row(children: [


        ElevatedButton(onPressed: (){



        }, child: Text("Pay")),


      ]) ,

    ),












    );}

  Widget  liSTMENU(){


    List menu =['Home','Special','Product2','Product1','Cart','Abouts','Help'];

    List x=["Home","Special Offer","Computer","Phone","Cart","About us","Help and Notes"];

    List y=[  Icons.home,Icons.local_offer_sharp , Icons.computer, Icons.phone,Icons.shopping_cart,Icons.call,Icons.chat  ];


    return Container(
      height: 500,
      width: 400,
      child: ListView.builder(

        scrollDirection:Axis.vertical,
        itemCount: x.length,
        itemBuilder: (BuildContext context, int index) {


          return Card(



            color: Colors.blue,
            shadowColor: Colors.red,
            elevation: 4,
            child: ListTile(

              minLeadingWidth: 5,
              leading: Icon(y[index]),iconColor: Colors.white,selectedColor: Colors.blue,
              selected: false,

              style: ListTileStyle.drawer,
              title:  Text(x[index],style: TextStyle(fontSize: 16,color:Colors.white,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold),),

              onTap: (){

                Navigator.pushReplacementNamed(context,menu[index]);
              },


            ),
          );



        },





      ),
    );
  }




}
