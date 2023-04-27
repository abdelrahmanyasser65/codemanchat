import 'package:codemanchat/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MaterialApp.router(
          routerConfig:AppRouter.router ,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
