import 'package:flutter/material.dart';
import 'package:food_card/core/base/base_statefull.dart';

class FoodDashboardView extends StatefulWidget {
  @override
  _FoodDashboardViewState createState() => _FoodDashboardViewState();
}

class _FoodDashboardViewState extends BaseStatefull<FoodDashboardView> {
  final  src='https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food Dashboard"),
      ),
      body: ListView(
        children: [
          SizedBox(
        height: dynamicHeigth(0.4),
        child: PageView.builder(itemBuilder:
         (context,index)=>Image.network(src,
         fit: BoxFit.cover,),
         ),
      )
        ],
      ),
    );
  }
}