

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_card/core/widgets/card/food_card.dart';
import 'package:food_card/core/widgets/wrap_icon_text.dart';

import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    appBar: buildAppBar(context),
    body: Column(children: [
      Expanded(
        flex: 4,
        child: buildPadding(),
        ),
     Spacer(),
       Expanded(
         flex: 2,child: buildPaddingDetail(),
       ),
      Expanded(
        child: buildElevatedButtonCheckOut(context),
      ),    
    ],
    ),
    
    );
  }

  Padding buildPaddingDetail() {
    return Padding(
       padding: insetsAll,
       child: Column(children: [
        Spacer(),
        Expanded(
          child: buildRowSubTotal(),
        ),
          Expanded(
          child: buildRowDelivery(),
        ),
          Expanded(
            flex: 3,
            child: buildRowTotal(),
        ),
  
       ],),
     );
  }

  Padding buildPadding() {
    return Padding(
      padding: insetsAll,
      child: buildListView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(itemBuilder: (context,index){
      return FoodCardWgidet(foodModel: foodItemList[index]);
    },itemCount: foodItemList.length,);
  }

  Row buildRowTotal() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
       Text(
        applicationStrings.total,
       style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold)),
        Text("@9.30",style:textTheme.headline5,),
      ],
      );
  }

  Row buildRowDelivery() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         buildTextSubTitile(applicationStrings.delivery),
         Text("@5.69"),
      ],
      );
  }

  Row buildRowSubTotal() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        buildTextSubTitile(applicationStrings.subTotal),
        Text("@5.69"),
      ],
      );
  }

  Text buildTextSubTitile(String title) {
    return Text(title,
        style: textTheme.bodyText1!.copyWith(color:colorScheme.onPrimary 
        ),
        );
  }

  ElevatedButton buildElevatedButtonCheckOut(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
        shape: MaterialStateProperty.all(StadiumBorder())),
      onPressed: (){}, 
    child: Center(child: IconTextWidget(titile: applicationStrings.checkOut, icon: Icons.arrow_right_alt_outlined),
    ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(title: Center(
    child: Text(applicationStrings.cartTitle,
   style: Theme.of(context).textTheme.headline6!.copyWith(
     color: Theme.of(context).colorScheme.onPrimary),
     ),
  ),
  );
  }

}