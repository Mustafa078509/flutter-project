import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:untitled/main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

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

                    child: ListView(


                      children: [Column(

                          children: [


                            SizedBox(height: 10,),
                            Row(children: [
                              SizedBox(width: 20,),
                              Text("Product", style: TextStyle(
                                color: Colors.blue,
                                  fontSize: 30, fontWeight: FontWeight.bold
                              ,fontStyle: FontStyle.italic

                              ),),
                            ],),
                            SizedBox(height: 30,),
                            list(),
                            SizedBox(height: 30,),
                            CarouselSlider.builder(

                              itemCount: 3,
                              options: CarouselOptions(
                                  height: 200, autoPlay: true, viewportFraction: 1),
                              itemBuilder: (BuildContext context, int index,
                                  int realIndex) {
                                return Container(
                                    width: double.infinity,
                                    height: 200,

                                    decoration: BoxDecoration(

                                      image: DecorationImage(image: NetworkImage(
                                        "https://images.ctfassets.net/hrltx"
                                            "12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300",),
                                          fit: BoxFit.cover

                                      ),


                                    ));
                              },

                            ),

                            SizedBox(height: 70,),

                            InkWell(
                              onTap: (){

                                print("mostafa");

                              },
                              child: Card(
                                elevation: 15,


                                shadowColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)

                                ),

                                child: Column(
                                  children: [


                                    Padding(
                                      padding: EdgeInsets.all(0.5),
                                      child: Container(
                                        height: 250,
                                        width: 300,
                                        decoration: BoxDecoration(

                                            border: Border.all(
                                                width: 3.0
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0) //                 <--- border radius here
                                            ),

                                            image: DecorationImage(image: NetworkImage(
                                                "https://ichef.bbci.co.uk/news/999/cpsprodpb/6D5A/production/_119449972_10.jpg"),
                                                fit: BoxFit.cover)

                                        ),



                                      ),
                                    ),

                                    Text("xssssssssssssssss",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),

                                    )],

                                ),


                              ),
                            ),
                            SizedBox(height: 70,),

                            InkWell(
                              onTap: (){

                                print("mostafa");

                              },
                              child: Card(
                                elevation: 15,


                                shadowColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)

                                ),

                                child: Column(
                                  children: [


                                    Padding(
                                      padding: EdgeInsets.all(0.5),
                                      child: Container(
                                        height: 250,
                                        width: 300,
                                        decoration: BoxDecoration(

                                            border: Border.all(
                                                width: 3.0
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0) //                 <--- border radius here
                                            ),

                                            image: DecorationImage(image: NetworkImage(
                                                "https://ichef.bbci.co.uk/news/999/cpsprodpb/6D5A/production/_119449972_10.jpg"),
                                                fit: BoxFit.cover)

                                        ),



                                      ),
                                    ),

                                    Text("xssssssssssssssss",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),

                                    )],

                                ),


                              ),
                            ),
                            SizedBox(height: 70,),
                            InkWell(
                              onTap: (){

                                print("mostafa");

                              },
                              child: Card(
                                elevation: 15,


                                shadowColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)

                                ),

                                child: Column(
                                  children: [


                                    Padding(
                                      padding: EdgeInsets.all(0.5),
                                      child: Container(
                                        height: 250,
                                        width: 300,
                                        decoration: BoxDecoration(

                                            border: Border.all(
                                                width: 3.0
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0) //                 <--- border radius here
                                            ),

                                            image: DecorationImage(image: NetworkImage(
                                                "https://ichef.bbci.co.uk/news/999/cpsprodpb/6D5A/production/_119449972_10.jpg"),
                                                fit: BoxFit.cover)

                                        ),



                                      ),
                                    ),

                                    Text("xssssssssssssssss",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),

                                    )],

                                ),


                              ),
                            ),


                          ]),
                      ],


                    )),


    );
  }


  Widget list() {
    int x = 0xff92085e;
    return Container(

      color: Colors.white,
      width: double.infinity,
      height: 140,

      child: ListView(
        semanticChildCount: 3,
        scrollDirection: Axis.horizontal,
        children: [

          InkWell(
            onHover: (value) {},
            onTap: () {
              int x = 0xff92085e;

              print("mostafa");
            },
            child: Card(
                color: Colors.white,
                elevation: 8,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12)
                ),
                margin: EdgeInsets.only(right: 30, left: 10),
                child: Padding(

                  child: Container(
                    width: 120,
                    height: 50,

                   decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(
                            "https://previews.123rf.com/imag"
                                "es/pixelery/pixelery1610/pixelery161000057/65005794-offre-sp%C"
                                "3%A9ciale-texte-suspendu-sur-les-cordes-illustration-3d.jpg"),
                            fit: BoxFit.cover)
                    ),


                  ),

                  padding: EdgeInsets.all(5),


                )),
          ),


          InkWell(
            onHover: (value) {},
            onTap: () {
              int x = 0xff92085e;

              print("mostafa");
            },
            child: Card(
                color: Color(x),
                elevation: 8,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12)
                ),
                margin: EdgeInsets.only(right: 30, left: 10),
                child: Padding(

                  child: Container(
                    width: 120,
                    height: 50,

                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXNalJkpKgHP2eSSc"
                                "OwWnUwUnElJ9gcZbE__NUP_s2zwLxI0-h5QiIo62p1pCwsufdEpM&usqp=CAU"),
                            fit: BoxFit.cover)
                    ),


                  ),

                  padding: EdgeInsets.all(5),


                )),
          ),



          InkWell(
            onHover: (value) {},
            onTap: () {
              int x = 0xff92085e;

              print("mostafa");
            },
            child: Card(
                color: Color(x),
                elevation: 8,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12)
                ),
                margin: EdgeInsets.only(right: 30, left: 10),
                child: Padding(

                  child: Container(
                    width: 120,
                    height: 50,

                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(
                            "https://previews.123rf.com/imag"
                                "es/pixelery/pixelery1610/pixelery161000057/65005794-offre-sp%C"
                                "3%A9ciale-texte-suspendu-sur-les-cordes-illustration-3d.jpg"),
                            fit: BoxFit.cover)
                    ),


                  ),

                  padding: EdgeInsets.all(5),


                )),
          ),




          InkWell(
            onHover: (value) {},
            onTap: () {
              int x = 0xff92085e;

              print("mostafa");
            },
            child: Card(
                color: Color(x),
                elevation: 8,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12)
                ),
                margin: EdgeInsets.only(right: 30, left: 40),
                child: Padding(

                  child: Container(
                    width: 120,
                    height: 50,

                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(
                            "https://previews.123rf.com/imag"
                                "es/pixelery/pixelery1610/pixelery161000057/65005794-offre-sp%C"
                                "3%A9ciale-texte-suspendu-sur-les-cordes-illustration-3d.jpg"),
                            fit: BoxFit.cover)
                    ),


                  ),

                  padding: EdgeInsets.all(5),


                )),
          ),






        ],

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









}
