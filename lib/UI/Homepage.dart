import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/UI/food_details.dart';
import 'package:food_project/model/product_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  List  productList =[Product(name: "All",image: "assets/images/all_image.png"),Product(name: "Bangla",image: "assets/images/bangla.png"),Product(name: "Italian",image: "assets/images/pasta.png"),Product(name: "Chines",image: "assets/images/chinese.png"),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(left: 20,right: 10),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                    height: 850,
                    color: Color(0xFFF0F5F9),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50,),
                        Icon(Icons.menu),
                         SizedBox(height: 30,),
                        Icon(Icons.search),
                        SizedBox(height: 50,),
                        RotatedBox(
                            quarterTurns: 1,
                            child: new Text("What I Have Refrigerator")
                        ),
                        SizedBox(height: 30,),
                        RotatedBox(
                            quarterTurns: 1,
                            child: new Text("Snacks")
                        ),
                        SizedBox(height: 50,),
                        RotatedBox(
                            quarterTurns: 1,
                            child: new Text("Drinks")
                        ),
                        SizedBox(height: 50,),
                        RotatedBox(
                            quarterTurns: 1,
                            child: new Text("Food")
                        ),


                      ],
                    ),
                  )

              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 5,
                  child: Container(
                    height: 900,
                    width: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 50,
                          child:  RichText(
                            text:TextSpan(text: "Simple recipe with your",style: new TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),
                                children: [
                                  TextSpan(text: " fridge’s",style: new TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFFFC6009)))
                                ]
                            ),

                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 65,
                          child: Text(
                            "ingredients",style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xFFFC6009),
                          ),
                            textAlign: TextAlign.justify,
                          ),),

                        Positioned(
                          top: 90,
                          child:   SizedBox(
                            height: 130,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(top:10,left: 10,right: 10),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: productList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context,index1){
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child:Column(
                                        children: [
                                          Container(
                                              padding: const EdgeInsets.all(15),
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF0F5F9),
                                                // Set border width
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20.0)), // Set rounded corner radius
                                              ),
                                              child: Column(
                                                children: [
                                                  Center(
                                                    child: Image.asset("${productList[index1].image}"),
                                                  ),
                                                  Text("${productList[index1].name}",style: TextStyle(
                                                    fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                                                  ),),
                                                  SizedBox(height: 10,),
                                                ],
                                              )
                                          ),

                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ),

                        Positioned(
                            height: 430,
                            width: 250,
                            top: 360,
                            child:  Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE0D0),
                                // Set border width
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25.0)), // Set rounded corner radius

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top:30,left: 20),
                                      child:Row(
                                        children: [
                                          Container(height: 20, child: VerticalDivider(color: Color(0xFFFE6016))),
                                          Text("Chinese",style: TextStyle(
                                            fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFFE6016),
                                          ),)
                                        ],
                                      )
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top:30,left: 20),
                                    child:  Text("HOT &\nPrawn Noodles",style: TextStyle(
                                      fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black,
                                    ),),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top:20,left: 20,right: 10),
                                      child:Text(
                                        "Lorem ipsum dolor sit amet consectetur. Sed potenti in sit vitae aliquet. Lorem ipsum dolor sit amet consectetur. Sed potenti in sit vitae aliquet. ",style: TextStyle(
                                        fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF584E4C),
                                      ),
                                        textAlign: TextAlign.justify,
                                      )
                                  ),

                                  Padding(
                                      padding: const EdgeInsets.only(top:30,left: 20),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Row(
                                                children: [
                                                  Image.asset("assets/images/cooking_first.png",color: Colors.black,),
                                                  SizedBox(width: 5,),
                                                  Text("20 ml",style: TextStyle(
                                                    fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                                                  ),),
                                                ],
                                              )
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Row(
                                                children: [
                                                  Image.asset("assets/images/cooking_sec.png",color: Colors.black,),
                                                  SizedBox(width: 5,),
                                                  Text("5 Ing",style: TextStyle(
                                                    fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                                                  ),),
                                                ],
                                              )
                                          ),
                                        ],
                                      )
                                  ),


                                  Padding(
                                      padding: const EdgeInsets.only(top:30,left: 20,right: 20),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFC6009).withOpacity(0.3),
                                              // Set border width
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7.0)), // Set rounded corner radius

                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(color: Color(0xFFF36F1D))
                                              ),
                                              child: Icon(Icons.add,color: Color(0xFFF36F1D),),
                                            ),
                                          ),

                                          ElevatedButton(
                                            onPressed: (){

                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetails()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xFFFC6009),
                                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                                textStyle: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold)),
                                            child: Text("View Recepie",style: TextStyle(
                                              fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white,
                                            ),),

                                          ),
                                        ],
                                      )
                                  ),

                                ],
                              ),
                            )),
                        Positioned(
                            left:50,
                            top: 230,
                            child:  Image.asset("assets/images/koren_noodles.png")
                        ),


                      ],
                    ),
                  ),)
            ],
          ),
        )
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        itemCornerRadius: 10.0,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Home'),
            activeColor: Color(0xFFFC6009),
            inactiveColor: Color(0xFFF0F5F9),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_sharp),
            title: Text('Person'),
            activeColor: Color(0xFFFC6009),
            inactiveColor: Color(0xFFF0F5F9),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Bookmark'),
            activeColor: Color(0xFFFC6009),
            inactiveColor: Color(0xFFF0F5F9),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Color(0xFFFC6009),
            inactiveColor: Color(0xFFF0F5F9),

          ),
        ],
      ),
    );
  }
}

