import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:untitled/main.dart';

import 'details.dart';


class Product1 extends StatefulWidget {
  const Product1({Key? key}) : super(key: key);

  @override
  _Product1State createState() => _Product1State();
}



class _Product1State extends State<Product1> {


  void initState() {

    getdataHeadphone();
    getdata();

    // TODO: implement initState
    super.initState();
  }


  List Headphonelist =[];

  Future getdataHeadphone() async {
    var Url = Uri.parse("http://192.168.1.125/pro/Head%20Phone.php");
    var res = await http.get(Url);
    var response1 = jsonDecode(res.body);
    setState(() {
      Headphonelist.addAll(response1);
    });
  }



  Future getdata() async {
    var Url = Uri.parse("http://192.168.1.125/pro/product.php");
    var res = await http.get(Url);
    var response = jsonDecode(res.body);
    setState(() {
      posts.addAll(response);
    });
  }

  List posts = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child:  Scaffold(



        body: TabBarView(
          children: [Container(






              height: double.infinity,

              child: ListView(


                children: [Column(

                    children: [



                      listproduct(Headphonelist),





                    ]),
                ],


              )),

            Container(






                height: double.infinity,

                child: ListView(


                  children: [Column(

                      children: [



                        listproduct(posts),





                      ]),
                  ],


                )),

            Container(






                height: double.infinity,

                child: ListView(


                  children: [Column(

                      children: [



                        listproduct(posts),





                      ]),
                  ],


                )),

          ],
        ),





        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.white,
          bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Headphone",style: TextStyle(color: Colors.grey),) ,
                ),

                Tab(
                  child: Text("charger",style: TextStyle(color: Colors.grey),) ,
                ),
                Tab(
                  child: Text("Cover",style: TextStyle(color: Colors.grey),) ,
                ),
              ]),

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


        )));

  }


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




  Widget listproduct(List x ){



    return  Container(

      width: 400,
      height: 600,
      child:  ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {


          return Card(shadowColor: Colors.red,

            elevation: 5,
            child:  Center(
              child: Hero(
                tag: x[index]['image'],
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 100,

                  child:InkWell(
                    onTap: () {

                      Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                        return Details( image: x[index]['image'], product:x[index]['detals'],name: x[index]['name'],price: x[index]['Price'],);
                      }, ));

                      },
                    child: ListTile(
                      trailing: Text(x[index]['Price'].toString(),style: TextStyle(fontSize: 20),),
                      leading:CircleAvatar(

                        backgroundImage: NetworkImage( x[index]['image']),
                      ),


                      title: Text(x[index]['name'],style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
              ),
            ),
          );



        },


        itemCount : x.length,
      ),);


  }

}
