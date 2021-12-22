import 'package:flutter/material.dart';
import 'package:project/constants/app_constants.dart';

class Esas extends StatefulWidget {
  Esas({Key? key}) : super(key: key);

  @override
  _EsasState createState() => _EsasState();
}

class _EsasState extends State<Esas> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              PopupMenuButton(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Ahmet KARABUDAK"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Yavuz AKILLI"),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text("Yasin KAYA"),
                          value: 3,
                        ),
                      ]),
            ],
            expandedHeight: 250,
            pinned: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.teal.shade900,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("MAP APP",style:Sabitler.baslikStyle ,),
              centerTitle: true,
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  "assets/img/0.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5,color: Colors.grey,style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.white70
                               // green as background color
                          ),
                      width: 150,
                      height: 155,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   ],
                  
                ),
               SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   ],
                  
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   ],
                  
                ),
               SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              offset: Offset(6,7), // Shadow position
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.grey.shade400
                               // green as background color
                          ),
                      width: 150,
                      height: 154,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Grand Dönüşümü",style: Sabitler.CardStyle,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage("assets/img/el-01.png"),
                                    )),
                                  ),
                                ),
                                Divider(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   ],
                  
                ),
              
              ],
            ),
          ))
        ],
      )
      );
  
  }
}