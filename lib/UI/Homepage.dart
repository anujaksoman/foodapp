import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_project/UI/food_details.dart';
import 'package:food_project/model/product_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  List  productList =[Product(name: "Noodles",image: "assets/images/noodles.png"),Product(name: "Prawns",image: "assets/images/prawns.png"),Product(name: "Cone Flour",image: "assets/images/conflour.png"),Product(name: "Eggs",image: "assets/images/egg.png"),Product(name: "Tomato",image: "assets/images/tomatto.png")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 10),
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
                height: 600,
                width: 300,
                top: 200,
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
                          padding: const EdgeInsets.only(top:30,left: 20,right: 10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
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
                                  )
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                  flex: 4,
                                  child: ElevatedButton(
                                    onPressed: (){

                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetails()));
                                    },
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xFFFC6009),
                                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                          textStyle: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    child: Text("View Recepie",style: TextStyle(
                                      fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white,
                                    ),),

                                  )
                              ),
                            ],
                          )
                      ),

                    ],
                  ),
                )),
            Positioned(
                left:110,
                top: 100,
                child:  Image.asset("assets/images/koren_noodles.png")
            ),


          ],
        ),
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
/*

 */
