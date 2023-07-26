import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier{
  List _item=[];
  List get favoriteItem=>_item;

  void favorites(String item){
    final favitem=_item.contains(item);
    if(favitem){
      _item.remove(item);
    }
    else{
      _item.add(item);
    }
    notifyListeners();
  }

  bool icn_change(String item){
    final favIcn=_item.contains(item);
    return favIcn;
  }
}
