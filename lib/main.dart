import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgt/state.dart';

import 'provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Provider_class(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: State_mgt(),
    ),
  ));
}

