
class  ImageConstants {
  static ImageConstants? _instace;
  static ImageConstants get instance{
    if(_instace!=null) return _instace!;
    _instace=ImageConstants._init();
    return _instace!;
  }
ImageConstants._init();

final borocoli='borocoli'.toPng;
final kale='kale'.toPng;
final redpeppers='redpeppers'.toPng;
final strawberry='strawberry'.toPng;
  
}

extension _ImageExtension on String{
  //Add to png path on image String
  String get toPng => 'assets/images/$this.png';
  
}