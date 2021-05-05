
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'darmanito',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
Color greenColor =Color(0xff01de9a);



  @override
  Widget build(BuildContext context) {

    var he = MediaQuery.of(context).size.height;
    var wi = MediaQuery.of(context).size.width;

                          /////////////// main
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _myAppbar(wi),
      body: Column(
        children: [
          _topImageTitle(wi),
          _bottomMenu(wi)




        ],
      )
    );
  }





  //////////////widgets


  //1.Appbar
  Widget _myAppbar(wi){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
            margin: new EdgeInsets.only(right: wi*.03),
          child: Image.asset('images/icon.png',width: wi*.11,),)
      ],

      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,size: wi*.09,),
            Text('البرز,فرديس',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
            Icon(Icons.location_on_sharp,color: greenColor,),
          ],),
      ),

      leading: Container(
        margin: new EdgeInsets.all(wi*.02),
        child: Stack(children: [
          Align(child:Icon(Icons.notifications_none,color: Colors.blue,size:wi*.09 ,) ,alignment: Alignment.center,),
          Align(child:Icon(Icons.circle,color: Colors.red,size:wi*.048 ,) ,alignment: Alignment.topRight,),

        ],),),

    );
  }


  /////////////////top widget *********
  Widget _topImageTitle(wi){
    return Container(
      margin: new EdgeInsets.only(top: wi*.05,right: wi*.01),
      width: wi,
      height: wi*.6,
      child: Row(children: [

        Expanded(child: _topImage(wi)),

        Expanded(child: _titleButton(wi)),

      ],),
    );
}

//2. sub widget of _topImageTitle
  Widget _topImage(wi){
    return Container(
      child:  Image.asset('images/dricon.jpg'),
      color: Colors.blue,
    );
  }

  //3. sub widget of _topImageTitle
  Widget _titleButton(wi){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: new EdgeInsets.all(wi*.02),
            child: Text('با درمانيتو درمان خود را سريع تر پيش ببريد',textDirection:TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.w900,fontSize: wi*.05),),
          ),
          Container(
            child: RaisedButton(onPressed: (){print('clicked');},
              child: Row(children: [
                Icon(Icons.arrow_back_sharp,color: Colors.white,size: wi*.06,),
                Text('افزايش موجودي كيف پول',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
              ],),
              color:greenColor,shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(new Radius.circular(8))
              ),),
          )
        ],),
    );
  }





  /////////////////bottom widget **********
  Widget _bottomMenu(wi){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _bottomTitle(wi),
          Row(children: [

            _bannerItem(wi, Image.asset('images/icon3.jpg'), _banner(wi)),
            _bannerItem(wi, Image.asset('images/icon2.jpg'), Container()),
            _bannerItem(wi, Image.asset('images/icon1.jpg'), Container()),

          ],),
          Row(children: [

            _bannerItem(wi, Image.asset('images/icon6.jpg'), _banner(wi)),
            _bannerItem(wi, Image.asset('images/icon5.jpg'), _banner(wi)),
            _bannerItem(wi, Image.asset('images/icon4.jpg'), _banner(wi)),





          ],),
        ],
      ),
    );
  }


  Widget _bannerItem(wi,Widget image,Widget banner){
    return Container(
      width: wi*.3,
      child: Stack(children: [

          Container(
          margin:EdgeInsets.only( top: 20),
            child: _menuItem(wi,image),),

          Container(child: banner),


      ],),
    );
  }


  Widget _banner(wi){
    return Container(
      margin: new EdgeInsets.only( left: wi*.08),
      child: Center(child: Text('به زودی',style: TextStyle(fontWeight: FontWeight.w900),)),
      width: wi*.2,
      height: wi*.07,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius:BorderRadius.all(Radius.circular(wi*.025))

    ),
    );
  }


  Widget _menuItem(wi,image){
    return Container(
      margin:new EdgeInsets.only(left: wi*.053,bottom: wi*.08) ,
      child: Padding(
        padding: new EdgeInsets.all(wi*.02),
        child:image,
          // Image.asset('images/icon1.jpg')
      ),
      width: wi*.26,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(wi*.05))
      ),
    );
  }

  //1.sub widget of _bottomMenu
  Widget _bottomTitle(wi){
    return  Container(
      margin: new EdgeInsets.only(top: wi*.04,right: wi*.01),
      width: wi,
      height: wi*.16,
      child: Column(children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
              margin: new EdgeInsets.all( wi*.03),
              child: Text('در درمانيتو',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue,fontSize: wi*.05),)),
        ),

        Container()


      ],),
    );
  }

  Widget _menus(wi){
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        color: Colors.red,
        width: wi*.05,
        height: wi*.01,
      ),
    );
  }


}













// final _myAppbar = AppBar(
//   elevation: 0,
//   backgroundColor: Colors.transparent,
//   actions: [
//     Container(
//       //  margin: new EdgeInsets.all(wi*.01),
//       child: Image.asset('images/icon.png',width: wi*.11,),)
//   ],
//
//   title: Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('البرز,فرديس',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
//         Icon(Icons.location_on_sharp,color: Color(0xff01de9a),),
//       ],),
//   ),
//
//   leading: Container(
//     margin: new EdgeInsets.all(wi*.02),
//     child: Stack(children: [
//       Align(child:Icon(Icons.notifications_none,color: Colors.blue,size:wi*.09 ,) ,alignment: Alignment.center,),
//       Align(child:Icon(Icons.circle,color: Colors.red,size:wi*.048 ,) ,alignment: Alignment.topRight,),
//
//     ],),),
//
// );