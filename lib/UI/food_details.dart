import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int currentIndex = 0;
  List foodListData = ["Chinese","Dinner","5 Ingredients","Beautiful","Soup"];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xFFFC6009),
          appBar: AppBar(
            backgroundColor: Color(0xFFFC6009),
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_left),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(),
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 20),
                    child: Row(
                      children: [
                        Image.asset("assets/images/share.png",color: Colors.black,),
                        SizedBox(width: 5,),
                        Image.asset("assets/images/Vector.png",color: Colors.black,),
                      ],
                    ),
                  ),

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
                    padding: const EdgeInsets.only(top:30,left: 20),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
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
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Image.asset("assets/images/fire.png",color: Colors.black,),
                                SizedBox(width: 5,),
                                Text("438 cal",style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                                ),),
                              ],
                            )
                        ),
                      ],
                    )
                  ),


                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top:10,left: 10,right: 10),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foodListData.length,
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFF0F5F9),
                                       // Set border width
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)), // Set rounded corner radius
                                    ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text("${foodListData[index]}",style: TextStyle(
                                      fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                                    ),),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
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
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child:  Text("Ingredients (5)",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                    ),),
                  ),





                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child:  Text("Lets make it step By Step",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF333333),
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:20,left:20,right: 10),
                    child:  Row(
                      children: [
                       Expanded(
                         flex: 1,
                           child:  Image.asset("assets/images/food_biriyani.png"),),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 2,
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Step 1",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF989898),
                            ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Sed potenti in sit vitae aliquet. Lorem ipsum dolor sit amet consectetur. Sed potenti in sit vitae aliquet. ",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF584E4C),
                            ),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ))
                      ],
                    )
                  ),

                ],

              ),
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
        ),
        Positioned(
            right: 0,
            left: 100,
            child:  Image.asset("assets/images/food_large.png")
        )
      ],
    );
  }
}


/*

 */