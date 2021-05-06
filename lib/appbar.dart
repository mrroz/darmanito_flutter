// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class MyAppbar extends StatefulWidget implements PreferredSizeWidget{
//
//
//   @override
//   _MyAppbarState createState() => _MyAppbarState();
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(75);
//
//
// }
//
// class _MyAppbarState extends State<MyAppbar> {
//   @override
//   Widget build(BuildContext context) {
//
//
//     var wi = MediaQuery.of(context).size.width;
//     var he = MediaQuery.of(context).size.height;
//
//     return  Scaffold(
//       appBar: _myAppbar(wi,context),
//     );
//   }
//
//   Widget _myAppbar(wi,context){
//     return AppBar(
//       centerTitle: true,
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       actions: [
//         Builder(builder: (context) =>GestureDetector(
//           onTap: ()=>Scaffold.of(context).openEndDrawer(),
//           child:Container(
//             margin: new EdgeInsets.only(right: wi*.03),
//             child: Image.asset('images/icon.png',width: wi*.11,),),)),
//
//
//       ],
//
//       title: Container(
//         child: Text('پيام های من',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900)),
//       ),
//
//       leading: Container(
//         child:   GestureDetector(
//             onTap: ()=>Navigator.pop(context),
//             child: Icon(Icons.home_outlined,color: Colors.blue,size:wi*.09 ,)),),
//
//     );
//   }
//
//
//
// }
