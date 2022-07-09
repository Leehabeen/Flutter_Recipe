import 'package:flutter/material.dart';

class CoffeRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffe 레시피"),
      ),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(50),
          child:  Image.asset("assets/images/coffe_1.jpeg"),),

          SizedBox(height: 50,
          child: Text("[레시피]",style: TextStyle(fontSize: 17),),
          
    ),

          Text("1.에스프레소 30ml 추출한다. 혹은 리스트레토 60ml를 추출한다.", style: TextStyle(),),
          Text( "2.머그잔에 뜨거운 물 250ml를 붓는다", ),
          Text("3. 샷 글라스를 살살 돌려가며 에스프레소를 물 위에 붓는다."),

        ],
      ),
    );
  }
}
