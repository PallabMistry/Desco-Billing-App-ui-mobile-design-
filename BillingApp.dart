import 'package:alluidesign/utill.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BillingApp extends StatefulWidget {
  const BillingApp({Key? key}) : super(key: key);

  @override
  State<BillingApp> createState() => _BillingAppState();
}

class _BillingAppState extends State<BillingApp> {
  buildImage(String urlBanner, int index) => ClipRRect( borderRadius: BorderRadius.circular(10),
    child: Container(color: Colors.grey,
      child:Image.asset(urlBanner,fit: BoxFit.cover) ,),
  );

  int activeIndex =0;
  int current = 0;

  @override
  Widget build(BuildContext context) {

    final billBanners=[
      'assets/image/B1.png',
      'assets/image/B2.jpg',
      'assets/image/B3.png',
    ];

    final List<Map<String, dynamic>>usedBill=[
      { "icon": "assets/icon/takalogo.png","title": "Recharged \nThis Month","title2": "Tk. 49675368.00","title3":"-", },
      { "icon": "assets/icon/diagram.png","title": "Max load","title2": "913972.00 KW","title3":"Last month", },
      { "icon": "assets/icon/chart.png","title": "Used This Month","title2": "Tk. 2745362.00","title3":"-", },
      { "icon": "assets/icon/graph.png","title": "Max load","title2": "7637243627 KW","title3":"Lasy year", },
    ];
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Color(0xff0077b3),
          //color set to purple or set your own color
        )
    );
    return Scaffold(
      // key: _key,
        backgroundColor: const Color(0XFFe6e6e6),
        appBar: AppBar(
          backgroundColor:const Color(0xff0077b3),
          toolbarHeight: 10.h,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const CircleAvatar(radius: 20,backgroundColor: Colors.white,child: CircleAvatar(radius: 20,child: Icon(Icons.person_outline,size: 30,color: Colors.black,),backgroundColor:Color(0Xffe6e6e6))),
          ),

          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Account No : 34399902 ',style: TextStyle(fontSize: 20)),
                  Row(
                    children: [
                      const Text('Meter No : 06611000649', style: TextStyle(fontSize: 14)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down,size: 15,)),
                    ],
                  ),
                ]),
          ),
          actions:  [
            InkWell(onTap:  () {
              // _key.currentState!.openDrawer();
            },child: const ImageIcon( AssetImage('assets/icon/Notification.png',),)),
            const SizedBox(width: 10,)
          ],
          shadowColor: Colors.deepOrangeAccent,
        ),
        body: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height*0.15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  const Color(0xff0077b3),
                  // const Color(0xff0088cc),
                  const Color(0xff00aaff),
                  const Color(0XFFe6e6e6)
                ],
              ),
            ),
          ),
          // RotatedBox(
          //     quarterTurns: 1,
          //     child: new Text("Lorem ipsum",style: GoogleFonts.tienne(fontSize: 100),)
          // ),
          Center(child: Image.asset('assets/image/desco.png',height: 250),),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics:BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(12),
                      child:Container(color: Colors.white,child: Padding(padding:  EdgeInsets.fromLTRB(12,15,12,15),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(borderRadius: BorderRadius.circular(10),
                                    child: Container(color:  Color(0Xffe6e6e6).withOpacity(0.3),
                                        child:  Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Icon(Icons.account_balance_wallet_outlined,size: 24),
                                        ))),
                                verysmallwidth,
                                Text('Current Balance',style: textStyle1),
                              ],),
                            verysmallheight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text('Tk. 125300,00',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,fontSize: 18)),
                                const Text('Time  21 Feb, 2023', style: TextStyle(color:  Color(0Xffa6a6a6),fontSize: 12)),
                              ],),
                              ClipRRect(borderRadius: BorderRadius.circular(30),
                                  child: Container(width: 32.w,color: const Color(0Xffff0000),
                                      child: Padding(
                                    padding: const EdgeInsets.all(10),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            ImageIcon(AssetImage('assets/icon/flash.png',),color: Colors.white,size: 24),
                                            Text('Recharge',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14)),
                                          ],
                                        ),
                                      ))),
                              ],),
                            smallheight,
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Column(   crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  const Text('Consumption', style:  TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                                  Row(
                                    children: [
                                      ClipRRect(borderRadius: BorderRadius.circular(10),
                                          child: Container(color: const Color(0Xffe6e6e6).withOpacity(0.3),
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child:  ImageIcon(AssetImage('assets/icon/takabd.png'),color: Colors.black,size: 24),
                                              ))),
                                      const SizedBox(width: 5,),
                                      Text('Tk. 343454890 Tk',style: textStyle),
                                    ],),
                                ],),
                                  const VerticalDivider(
                                    thickness: 2,
                                    // width: 2.w,
                                  ),
                                Column(   crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Used Unit', style:  TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        ClipRRect(borderRadius: BorderRadius.circular(10),
                                            child: Container(color: const Color(0Xffe6e6e6).withOpacity(0.3),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(6.0),
                                                  child:  ImageIcon(AssetImage('assets/icon/light.png'),color: Colors.black,size: 24),
                                                ))),
                                        const SizedBox(width: 5,),
                                        Text('Tk. 94567890 Tk',style: textStyle),
                                      ],),
                                  ],),
                              ],),
                            ),
                            const Divider( thickness: 2,),
                            smallheight,
                            Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Wrap( children: [
                                  ClipRRect(borderRadius: BorderRadius.circular(10),
                                      child: Container(color: const Color(0Xffe6e6e6).withOpacity(0.3),
                                          child: const Padding(
                                            padding: EdgeInsets.all(6.0),
                                            child:  ImageIcon(AssetImage('assets/icon/clock.png'),color: Colors.black,size: 24),
                                          ))),
                                  verysmallwidth,
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text('Last Recharged, ',style: TextStyle(color:Colors.black.withOpacity(1), fontSize: 14)),
                                        const Text('12 Mar, 2023',style:  TextStyle(color:Color(0xffbfbfbf), fontSize: 12)),
                                      ],),
                                      const Text(' TK. 123440',style: TextStyle(fontSize:13 ,color: Colors.black,fontWeight: FontWeight.bold)),
                                    ],),
                                ],),

                                CircleAvatar(backgroundColor:const Color(0xff0077b3).withOpacity(0.1),child: const Icon(Icons.arrow_forward,color: Color(0xff0077b3),size: 18,),radius: 15),


                            ],)

                          ],
                        ),
                      ),)
                  ),
                ),
                smallheight,
                Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: billBanners.length,
                      itemBuilder: (context, index,realIndex){
                        final urlBanner = billBanners[index];
                        return buildImage(urlBanner, index);

                      },
                      options: CarouselOptions(
                        height:24.h,
                        autoPlay: true,
                        autoPlayCurve: Curves.ease,
                        enlargeCenterPage: true,
                        reverse: true,
                        autoPlayInterval: const Duration(seconds:7),

                        onPageChanged: (index,reason)=>
                            setState(()=> activeIndex = index),
                      ),),
                    smallheight,
                    AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: billBanners.length,
                        effect:const ColorTransitionEffect(
                            activeDotColor: Color(0xff0077b3),
                            dotColor: Color(0xff80d4ff),
                            dotHeight: 6,dotWidth: 6,
                            radius: 10
                        )
                    )
                  ],
                ),
                smallheight,
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 35.h,
                    child: StaggeredGridView.countBuilder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      itemCount: usedBill.length,
                      itemBuilder: ( context,  index) =>  ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            color: Colors.white,
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                ClipRRect(borderRadius: BorderRadius.circular(10),
                                    child: Container(color:   Color(0Xffe6e6e6).withOpacity(0.3),
                                        child:  Padding(
                                          padding:  EdgeInsets.all(6.0),
                                          child:  ImageIcon(AssetImage(usedBill.elementAt(index)['icon']),size: 24,color: Color(0xff0077b3),)
                                          // Image.asset(usedBill.elementAt(index)['image'], height: 17,color: Color(0xff0077b3)) ,
                                        ))),verysmallwidth,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Text(usedBill.elementAt(index)['title'],style:  TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w400)),
                                  Text(usedBill.elementAt(index)['title2'],style:  TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500)),
                                  Text(usedBill.elementAt(index)['title3'],style:  TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w200)),
                                ],)
                               ],),
                            )
                        ),
                      ),
                      staggeredTileBuilder: (int index) =>
                       StaggeredTile.count(2, index.isEven ? 2 : 1),
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                    ),
                  ),
                ),
                smallheight,

              ],
            ),
          ),
        ],)
    );
  }
}
