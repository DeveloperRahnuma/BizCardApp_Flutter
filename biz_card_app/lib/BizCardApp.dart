

import 'package:flutter/material.dart';

class BizCardApp extends StatelessWidget {
  const BizCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Biz Card App"),),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getContainer(),
            _getIconContainer()
          ],
        ),
      ),
    );
  }



  Container _getContainer(){
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Rahnuma Sharib", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            Text("Rahnuma.sharib786@gmail.com", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal),),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.person_outline),
               Text("T: @buildappswithme")
             ],
           )
          ],
        ),
      ),
    );
  }


  Container _getIconContainer(){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border.all(color:Colors.redAccent, width: 1.2),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
