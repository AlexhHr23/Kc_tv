import 'package:kc_tv_app/model/item.dart';

class Games  {
  List<Item> items = <Item>[];

  Games();

  Games.fromJsonList( List<dynamic> jsonList ) {
    
    for(var dato in jsonList) {
      final item = Item.fromJson( dato );
      items.add(item);
    }
  }
}