



import 'package:food_card/core/base/base_statefull.dart';

import 'food_card.dart';
import 'food_model.dart';

abstract class FoodCardViewModel extends BaseStatefull<FoodCard> {
  late final List<FoodModel> foodItemList;

  @override
  void initState() {
    super.initState();
    foodItemList=[
        FoodModel('Broccoli', imageConstantss.borocoli, "350 g", "12 AZN"),
        FoodModel('Kale', imageConstantss.kale, "50 g", "18 AZN"),
        FoodModel('Strawberry', imageConstantss.strawberry, "35 g", "19 AZN"),
        FoodModel('Red Peppers', imageConstantss.redpeppers, "80 g", "10 AZN"),
    ];
  }

}