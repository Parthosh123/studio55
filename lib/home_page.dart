import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio/image_view.dart';
import 'package:studio/second_page.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(29, 29, 29, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Align(alignment: Alignment.centerLeft,
                  child: Text("Photos",
                    style: GoogleFonts.inter(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),)),
              SizedBox(
                height: 20.0,
              ),
              CarouselSlider(
                items: [
                Align(alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageView(value: "images/1.jpg",)));
                    },
                    child: Stack(
                        children: [Container(
                          height: 250.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white38,
                                offset: Offset(
                                  -2.5,
                                  -2.5,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  2.5,
                                  2.5,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage("images/1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text('Photo 1',style: GoogleFonts.inter(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                              )),
                        ),
                          Container(
                            height: 250.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [

                                      Colors.black26,
                                      Colors.black87,
                                    ],
                                    stops: [0.8,0.99]
                                )
                            ),
                          )
                        ]
                    ),
                  ),
                ),
                Align(alignment: Alignment.center,
                  child: Stack(
                      children: [Container(
                        height: 250.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white38,
                              offset: Offset(
                                -2.5,
                                -2.5,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                2.5,
                                2.5,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage("images/6.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Text('Photo 2',style: GoogleFonts.inter(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                            )),
                      ),
                        Container(
                          height: 250.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [

                                    Colors.black26,
                                    Colors.black87,
                                  ],
                                  stops: [0.8,0.99]
                              )
                          ),
                        )
                      ]
                  ),
                ),
                Align(alignment: Alignment.center,
                  child: Stack(
                      children: [Container(
                        height: 250.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white38,
                              offset: Offset(
                                -2.5,
                                -2.5,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                2.5,
                                2.5,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage("images/8.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Text('Photo 3',style: GoogleFonts.inter(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                            )),
                      ),
                        Container(
                          height: 250.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [

                                    Colors.black26,
                                    Colors.black87,
                                  ],
                                  stops: [0.8,0.99]
                              )
                          ),
                        )
                      ]
                  ),
                ),
                Align(alignment: Alignment.center,
                  child: Stack(
                      children: [Container(
                        height: 250.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white38,
                              offset: Offset(
                                -2.5,
                                -2.5,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                2.5,
                                2.5,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage("images/9.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Text('Photo 4',style: GoogleFonts.inter(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                            )),
                      ),
                        Container(
                          height: 250.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [

                                    Colors.black26,
                                    Colors.black87,
                                  ],
                                  stops: [0.8,0.99]
                              )
                          ),
                        )
                      ]
                  ),
                ),
              ], options: CarouselOptions(
                  viewportFraction: 1.0,
                  aspectRatio: 1.0,
                  enlargeCenterPage: false,
                height: 280.0
              ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(alignment: Alignment.centerLeft,
                      child: Text("Videos",
                        style: GoogleFonts.inter(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),)),
                  Align(alignment: Alignment.centerLeft,
                      child: Text("see more",
                        style: GoogleFonts.inter(fontSize: 15.0,color: Colors.white),)),
                ],
              ),
           SizedBox(height: 30.0,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>SecondPage(imgString:"images/7.jpg",imgUrlString: "https://www.youtube.com/watch?v=SUQLPA9bufE&ab_channel=BestVideoMakers" ,)));
                      },
                      child: Stack(
                          children: [Container(
                            height: 200.0,
                            width: 140.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white38,
                                  offset: Offset(
                                    -2.5,
                                    -2.5,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(
                                    2.5,
                                    2.5,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage("images/7.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                            Container(
                              height: 200.0,
                              width: 140.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                              ),
                            )
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>SecondPage(imgString:"images/2.jpg" ,
                              imgUrlString:"https://youtu.be/ObcpRa1Nzi4" ,)));
                        },
                      child: Stack(
                          children: [Container(
                            height: 200.0,
                            width: 140.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white38,
                                  offset: Offset(
                                    -2.5,
                                    -2.5,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(
                                    2.5,
                                    2.5,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage("images/2.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                            Container(
                              height: 200.0,
                              width: 140.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>SecondPage(imgString: "images/3.jpg",
                              imgUrlString: "https://youtu.be/sJNXJ3F_r-4",)));
                      },
                      child: Stack(
                          children: [Container(
                            height: 200.0,
                            width: 140.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white38,
                                  offset: Offset(
                                    -2.5,
                                    -2.5,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(
                                    2.5,
                                    2.5,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage("images/3.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                            Container(
                              height: 200.0,
                              width: 140.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
