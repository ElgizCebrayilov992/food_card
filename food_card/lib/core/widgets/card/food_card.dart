import 'package:flutter/material.dart';
import 'package:food_card/food_card/food_model.dart';

class FoodCardWgidet extends StatelessWidget {
final FoodModel foodModel;

  const FoodCardWgidet({Key? key, required this.foodModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
          child: Card(
            color:Theme.of(context).colorScheme.onSecondary
            ,child: ListTile(
            leading:
             Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(foodModel.image),fit: BoxFit.cover)
            ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(foodModel.title),
                 Text(foodModel.gram),
              ],
            ),
            trailing: Text(foodModel.money),
          ),
          ),
    );
  }
}