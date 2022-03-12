import 'package:flutter/material.dart';

class Abouts extends StatefulWidget {
  const Abouts({Key? key}) : super(key: key);

  @override
  State<Abouts> createState() => _AboutsState();
}

class _AboutsState extends State<Abouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("For Sell",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
        centerTitle: true,


        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},),
          IconButton(

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

        width: double.infinity,
        height: double.infinity,


child: Column(children: [

  SizedBox(height: 250),
  Text("Phone Number 078XXXXXXXXX",style:TextStyle(fontSize: 25)),

  SizedBox(height: 100),
  Text("Email:MSI Company@gmail.com",style: TextStyle(fontSize: 25),)



],)),


    );
  }



  Widget  liSTMENU(){


    List menu =['Home','Special','Product2','Product1','Cart','Abouts','Help'];

    List x=["Home","Special Offer","Computer","Phone","Cart","About us","Help and Notes"];

    List y=[  Icons.home,Icons.local_offer_sharp , Icons.computer, Icons.phone,Icons.shopping_cart ,Icons.call,Icons.chat  ];


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
