import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_coffee_page.dart';

class RecipeListItem extends StatelessWidget {

  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(aspectRatio: 2 / 1,
        child:  GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeRecipePage()),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/images/$imageName.jpeg",
                fit: BoxFit.cover,
          ),
          ),
        ),

        ),
        SizedBox(height: 10,),
        Text(title, style: TextStyle(fontSize: 20),),
        Text("Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
        style: TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    ),
    );
  }
}
