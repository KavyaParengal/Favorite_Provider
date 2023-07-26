
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgt/provider/provider.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {

 // List words=['time','year','people','way','day','man','thing','woman','life','child','world','school',];

  @override
  Widget build(BuildContext context) {

    final object= Provider.of<Provider_class>(context);
    List itemStore=object.favoriteItem;

    return Scaffold(
        appBar: AppBar(
          title: Text('Favorites'),
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: itemStore.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 15,top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(itemStore[index],style: TextStyle(fontSize: 18),),
                      IconButton(
                        onPressed: (){  object.favorites(itemStore[index]);
                        },
                        icon: object.icn_change(itemStore[index]) ?
                        Icon(Icons.favorite,color: Colors.red,) :
                        Icon(Icons.favorite_outline,color: Colors.grey.shade500,),
                      ),
                    ],
                  ),
                );
              }
          ),
        )
    );
  }
}
