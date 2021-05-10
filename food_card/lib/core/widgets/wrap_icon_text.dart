import 'package:flutter/material.dart';
class IconTextWidget extends StatelessWidget {
 final String titile;
 final IconData icon;

  const IconTextWidget({Key? key, required this.titile, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(

    spacing: 10,
    children: [
      buildIcon(context),
      buildText(context),
    ],
  );
  }

  Icon buildIcon(BuildContext context) => Icon(icon,color: Theme.of(context).colorScheme.primary,);
  Text buildText(BuildContext context) => Text (titile,style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold));
}