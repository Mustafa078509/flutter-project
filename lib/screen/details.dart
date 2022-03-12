import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screen/ui%20screen.dart';
import 'package:http/http.dart'as http;
class Details extends StatefulWidget {


  const Details( {Key? key, required this.product, this.image, this.name, this.price}) : super(key: key);

  final  product;
  final  image;
  final  name;
  final  price;



  @override





  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {




  @override


  Widget build(BuildContext context) {

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

        child:ListView(
          scrollDirection: Axis.vertical,
          children: [ Column(
              children:[


                SizedBox(height: 300,child:Container(width: 300,height: 300,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.cover)


                  ),
                ) ),

                ListTile(title: Text(widget.name,style: TextStyle(fontSize: 30,color: Colors.black  )),

                  trailing: Text(widget.price.toString(),style: TextStyle(color: Colors.red,fontSize: 25)),

                  subtitle: Text(widget.product,style: TextStyle(fontSize:18)),


                ),

                ElevatedButton(onPressed:() {

                },  child: Text("Cart") ,)



              ]
          ),],
        )


      ),

    );
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

/*
  Future insertCart()async{
   var  Url= Uri.parse("http://192.168.1.125/pro/Untitled-1.php");
   var res = await http.post(Url,body:
   });





  }

*/





}
