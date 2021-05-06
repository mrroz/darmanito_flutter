import 'package:darmanito/factor.dart';
import 'package:darmanito/main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  Color drawercolor=Colors.white;
  Color greenColor =Color(0xff01de9a);
  Color lightBackground = Color(0xff7c959c);


  @override
  Widget build(BuildContext context) {

    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return _myDrawer(wi, he);
  }





  Widget _myDrawer(var wi, var he){

    return Container(
      margin: EdgeInsets.only(right: wi*.1 , bottom:wi*.5 ),
      width: wi*.25,
      height: wi*.8,
      decoration: BoxDecoration(
          color: drawercolor,
          boxShadow: [BoxShadow(color: drawercolor,blurRadius: 20,spreadRadius: 5,offset: Offset(-4, 0))]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _drawerItem(wi,Icons.person,1 ,Container()),
          _drawerItem(wi,Icons.shopping_cart,2,Icon(Icons.brightness_1,size: wi*.04,color: Colors.red,) ),
          _drawerItem(wi,Icons.info_outline,3 ,Container()),
        ],
      ),
    )
    ;
//morteza roozbehi @mr_roz
  }



  Widget _drawerItem(wi,IconData icon,var id,Widget icon2){

    return   GestureDetector(
      onTap: () { ///todo/////////////
        //Future.delayed(Duration(seconds: 4)).then((value) => Navigator.of(context).pop());
        if(id==2){
          Navigator.pop(context);
          Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_,__,___)=>Sefaresh1(),transitionDuration: Duration(seconds: 0),));
        }
        // if(id==1){
        //   Navigator.pop(context);
        //   Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Profile()))
        // }
        // if(id==3){
        //   Navigator.pop(context);
        //   Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Profile()))
        // }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: wi*.05),
        padding:   EdgeInsets.all(wi*.017),
        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
        child: Stack(children: [
          Align(alignment: Alignment.center,child: Icon(icon,size: wi*.09,color: Colors.white,),),
          Positioned(
              right: 20,
              bottom: 20,
              child: Align(alignment: Alignment.topRight,child: icon2,)),

        ],),),
    );
  }
}
