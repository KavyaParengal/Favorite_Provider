
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgt/fav.dart';
import 'package:state_mgt/provider/provider.dart';

class State_mgt extends StatefulWidget {
  const State_mgt({Key? key}) : super(key: key);

  @override
  State<State_mgt> createState() => _State_mgtState();
}

class _State_mgtState extends State<State_mgt> {

  List words=['time','year','people','way','day','man','thing','woman','life','child','world','school',];

  @override
  Widget build(BuildContext context) {

    final object= Provider.of<Provider_class>(context);

    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Fav()));
          },
          label : Text('Favorites',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
        ),
      appBar: AppBar(
        title: Text('English Words'),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: words.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 15,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(words[index],style: TextStyle(fontSize: 18),),
                        IconButton(
                            onPressed: (){
                              object.favorites(words[index]);
                            },
                            icon: object.icn_change(words[index]) ?
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
